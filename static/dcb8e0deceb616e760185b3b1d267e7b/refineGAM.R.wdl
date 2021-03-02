version 1.0

task RefineGAMR {
  command <<<
    refineGAM_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}