version 1.0

task Clearcore2StructuredStoragedll {
  command <<<
    Clearcore2_StructuredStorage_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}