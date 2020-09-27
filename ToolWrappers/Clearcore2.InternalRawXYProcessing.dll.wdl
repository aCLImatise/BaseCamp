version 1.0

task Clearcore2InternalRawXYProcessingdll {
  command <<<
    Clearcore2_InternalRawXYProcessing_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}