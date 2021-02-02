version 1.0

task Xmatchviewconiferpy {
  command <<<
    xmatchview_conifer_py
  >>>
  output {
    File out_stdout = stdout()
  }
}