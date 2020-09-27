version 1.0

task QcalplotR {
  command <<<
    qcalplot_R
  >>>
  output {
    File out_stdout = stdout()
  }
}