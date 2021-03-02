version 1.0

task Clearcore2RawXYProcessingdll {
  command <<<
    Clearcore2_RawXYProcessing_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}