version 1.0

task Clearcore2StructuredStoragedll {
  command <<<
    Clearcore2_StructuredStorage_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}