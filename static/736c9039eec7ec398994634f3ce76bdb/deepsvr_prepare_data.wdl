version 1.0

task DeepsvrPrepareData {
  input {
    Boolean headerHeader
    Boolean skipSkipBamReadCount
    String samplesSamplesFilePath
    String outputOutputDirPath
  }
  command <<<
    deepsvr prepare-data \
      ~{true="--header" false="" headerHeader} \
      ~{true="--skip_bam_readcount" false="" skipSkipBamReadCount} \
      ~{if defined(samplesSamplesFilePath) then ("--samples-file-path " +  '"' + samplesSamplesFilePath + '"') else ""} \
      ~{if defined(outputOutputDirPath) then ("--output-dir-path " +  '"' + outputOutputDirPath + '"') else ""}
  >>>
}