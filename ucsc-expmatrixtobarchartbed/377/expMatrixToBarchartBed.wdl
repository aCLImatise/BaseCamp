version 1.0

task ExpMatrixToBarchartBed {
  input {
    String autoAutoSql
    String groupGroupOrderFile
    Boolean useUseMean
    Boolean verboseVerbose
    String? sampleSampleFile
    String? matrixMatrixFile
    String? bedBedFile
    String? outputOutputFile
  }
  command <<<
    expMatrixToBarchartBed \
      ~{sampleSampleFile} \
      ~{if defined(autoAutoSql) then ("--autoSql " +  '"' + autoAutoSql + '"') else ""} \
      ~{if defined(groupGroupOrderFile) then ("--groupOrderFile " +  '"' + groupGroupOrderFile + '"') else ""} \
      ~{true="--useMean" false="" useUseMean} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{matrixMatrixFile} \
      ~{bedBedFile} \
      ~{outputOutputFile}
  >>>
}