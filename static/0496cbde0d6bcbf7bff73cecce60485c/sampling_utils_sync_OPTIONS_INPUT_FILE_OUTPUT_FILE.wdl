version 1.0

task SamplingUtilsSyncOPTIONSINPUTFILEOUTPUTFILE {
  input {
    File masterMasterFile
  }
  command <<<
    sampling-utils sync OPTIONS INPUT_FILE OUTPUT_FILE \
      ~{if defined(masterMasterFile) then ("--master-file " +  '"' + masterMasterFile + '"') else ""}
  >>>
}