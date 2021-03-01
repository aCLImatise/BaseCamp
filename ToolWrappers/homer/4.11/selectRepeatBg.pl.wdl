version 1.0

task SelectRepeatBgpl {
  command <<<
    selectRepeatBg_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}