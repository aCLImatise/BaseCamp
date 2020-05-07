version 1.0

task Cellprofiler {
  input {
    String pipelinePipeline
    Boolean runRunHeadless
    Boolean runRun
    String outputOutputDirectory
    String imageImageDirectory
    String firstFirstImageSet
    String lastLastImageSet
    String groupGroup
    String pluginsPluginsDirectory
    String temporaryTemporaryDirectory
    String doneDoneFile
    Boolean measurementsMeasurements
    String printPrintGroups
    String getGetBatchCommands
    String imagesImagesPerBatch
    String dataDataFile
    String fileFileList
    Boolean doDoNotWriteSchema
    Boolean writeWriteSchemaAndExit
    String omerOmerOCredentials
    String logLogLevel
  }
  command <<<
    cellprofiler \
      ~{if defined(pipelinePipeline) then ("--pipeline " +  '"' + pipelinePipeline + '"') else ""} \
      ~{true="--run-headless" false="" runRunHeadless} \
      ~{true="--run" false="" runRun} \
      ~{if defined(outputOutputDirectory) then ("--output-directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{if defined(imageImageDirectory) then ("--image-directory " +  '"' + imageImageDirectory + '"') else ""} \
      ~{if defined(firstFirstImageSet) then ("--first-image-set " +  '"' + firstFirstImageSet + '"') else ""} \
      ~{if defined(lastLastImageSet) then ("--last-image-set " +  '"' + lastLastImageSet + '"') else ""} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{if defined(pluginsPluginsDirectory) then ("--plugins-directory " +  '"' + pluginsPluginsDirectory + '"') else ""} \
      ~{if defined(temporaryTemporaryDirectory) then ("--temporary-directory " +  '"' + temporaryTemporaryDirectory + '"') else ""} \
      ~{if defined(doneDoneFile) then ("--done-file " +  '"' + doneDoneFile + '"') else ""} \
      ~{true="--measurements" false="" measurementsMeasurements} \
      ~{if defined(printPrintGroups) then ("--print-groups " +  '"' + printPrintGroups + '"') else ""} \
      ~{if defined(getGetBatchCommands) then ("--get-batch-commands " +  '"' + getGetBatchCommands + '"') else ""} \
      ~{if defined(imagesImagesPerBatch) then ("--images-per-batch " +  '"' + imagesImagesPerBatch + '"') else ""} \
      ~{if defined(dataDataFile) then ("--data-file " +  '"' + dataDataFile + '"') else ""} \
      ~{if defined(fileFileList) then ("--file-list " +  '"' + fileFileList + '"') else ""} \
      ~{true="--do-not-write-schema" false="" doDoNotWriteSchema} \
      ~{true="--write-schema-and-exit" false="" writeWriteSchemaAndExit} \
      ~{if defined(omerOmerOCredentials) then ("--omero-credentials " +  '"' + omerOmerOCredentials + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""}
  >>>
}