require( plyr )

getTidyDataSet <- function() {
    initData()
    
    activities <- read.table( getRelativeFilePath( 'activity_labels.txt' ) )
    features <- read.table( getRelativeFilePath( 'features.txt' ) )
    
    testData <- getData( 'test', activities )
    trainData <- getData( 'train', activities )
    allData <- rbind( testData, trainData )
    
    labels <- getFormattedFeatureLabels( features )
    names( allData ) <- labels
    
    filteredLabels <- getFilteredLabels( labels, allData )
    filteredData <- allData[ ,filteredLabels ]
    
    ddply( filteredData, c( "Subject.Id", "Activity.Id" ), numcolwise( mean ) )
}

getFilteredLabels <- function( labels, allData ) {
    filteredLabels <- ( grepl("Mean|StandardDeviation|Subject|Activity", labels ) )
    addingLabels <- rep( F, ( ncol( allData ) - length( filteredLabels ) ) ) 
    filteredLabels <- c( filteredLabels, addingLabels )
}

getFormattedFeatureLabels <- function( features ) {
    featureLabels <- union( 'Activity.Id', features[ ,2 ] )
    featureLabels <- union( 'Subject.Id', featureLabels )
    
    featureLabels <- gsub( '\\(|\\)', '', featureLabels, perl = TRUE )
    featureLabels <- make.names( featureLabels )
    featureLabels <- gsub( 'Acc', 'Acceleration', featureLabels )
    featureLabels <- gsub( 'GyroJerk', 'AngularAcceleration', featureLabels )
    featureLabels <- gsub( 'Gyro', 'AngularSpeed', featureLabels )
    featureLabels <- gsub( 'Mag', 'Magnitude', featureLabels )
    featureLabels <- gsub( '^t', 'TimeDomain.', featureLabels )
    featureLabels <- gsub( '^f', 'FrequencyDomain.', featureLabels )
    featureLabels <- gsub( '\\.mean', '.Mean', featureLabels )
    featureLabels <- gsub( '\\.std', '.StandardDeviation', featureLabels )
    featureLabels <- gsub( 'Freq\\.', 'Frequency.', featureLabels )
    featureLabels <- gsub( 'Freq$', 'Frequency', featureLabels )

    featureLabels
}

getData <- function( prefix, activities ) {
    subjects <- readTableData( 'subject', prefix )
    
    labels <- readTableData( 'y', prefix )
    labels <- join( labels, activities )[ 2 ]
    
    featureVector <- readTableData( 'X', prefix );
    cbind( cbind( subjects, labels ), featureVector ) 
}

readTableData <- function( path, prefix ) {
    prefixDir <- paste( prefix, '/', sep = '' )
    read.table( getRelativeFilePath( getFileName( path, prefix ), prefixDir ) )
}

initData <- function() {
    if ( !dir.exists( './data' ) ) {
        dir.create( './data'  )
        initCourseData()
    }
}

initCourseData <- function() {
    url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
    download.file( url, destfile = './data/data.zip' )
    
    unzip( './data/data.zip', exdir = './data' )
}

getFileName <- function( fileName, prefix ) {
    paste( fileName, '_', prefix, '.txt', sep = '' )
}

getRelativeFilePath <- function( filePath, addingDir = '' ) {
    paste( './data/UCI HAR Dataset/', addingDir, filePath, sep = '')
}

tidyDataSet <- getTidyDataSet()
write.table( tidyDataSet, 'tidyDataSet.txt', row.name = F )