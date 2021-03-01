version 1.0

task QcalplotR {
  command <<<
    qcalplot_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}