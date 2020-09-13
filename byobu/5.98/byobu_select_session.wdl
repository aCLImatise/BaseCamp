version 1.0

task Byobuselectsession {
  command <<<
    byobu_select_session
  >>>
  output {
    File out_stdout = stdout()
  }
}