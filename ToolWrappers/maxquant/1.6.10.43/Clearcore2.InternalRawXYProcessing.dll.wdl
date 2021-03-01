version 1.0

task Clearcore2InternalRawXYProcessingdll {
  command <<<
    Clearcore2_InternalRawXYProcessing_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}