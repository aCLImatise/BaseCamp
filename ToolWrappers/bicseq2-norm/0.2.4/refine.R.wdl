version 1.0

task RefineR {
  command <<<
    refine_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}