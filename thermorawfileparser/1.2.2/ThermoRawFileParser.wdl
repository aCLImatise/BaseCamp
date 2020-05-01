version 1.0

task ThermoRawFileParser.sh {
  input {
    String inputInput
    String inputInputDirectory
    String outputOutput
    String outputOutputFile
    String formatFormat
    String metadataMetadata
    String metadataMetadataOutputFile
    Boolean gzipGzip
    Boolean noNoPeakPicking
    Boolean noNoZlibCompression
    String loggingLogging
    Boolean ignoreIgnoreInstrumentErrors
    Boolean s3S3Url
    Boolean s3S3AccessKeyId
    Boolean s3S3SecretAccesskey
    Boolean s3S3BucketName
  }
  command <<<
    ThermoRawFileParser.sh \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(inputInputDirectory) then ("--input_directory " +  '"' + inputInputDirectory + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output_file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(metadataMetadata) then ("--metadata " +  '"' + metadataMetadata + '"') else ""} \
      ~{if defined(metadataMetadataOutputFile) then ("--metadata_output_file " +  '"' + metadataMetadataOutputFile + '"') else ""} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--noPeakPicking" false="" noNoPeakPicking} \
      ~{true="--noZlibCompression" false="" noNoZlibCompression} \
      ~{if defined(loggingLogging) then ("--logging " +  '"' + loggingLogging + '"') else ""} \
      ~{true="--ignoreInstrumentErrors" false="" ignoreIgnoreInstrumentErrors} \
      ~{true="--s3_url" false="" s3S3Url} \
      ~{true="--s3_accesskeyid" false="" s3S3AccessKeyId} \
      ~{true="--s3_secretaccesskey" false="" s3S3SecretAccesskey} \
      ~{true="--s3_bucketName" false="" s3S3BucketName}
  >>>
}