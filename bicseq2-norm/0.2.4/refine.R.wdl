version 1.0

task RefineR {
  command <<<
    refine_R
  >>>
  output {
    File out_stdout = stdout()
  }
}