version 1.0

task DoPlotsR {
  command <<<
    doPlots_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}