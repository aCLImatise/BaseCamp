version 1.0

task Clearcore2RawXYProcessingdll {
  command <<<
    Clearcore2_RawXYProcessing_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}