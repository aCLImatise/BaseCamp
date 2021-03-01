version 1.0

task NormalizeGAMR {
  command <<<
    normalizeGAM_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}