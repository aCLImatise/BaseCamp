version 1.0

task SelectRepeatBgpl {
  command <<<
    selectRepeatBg_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}