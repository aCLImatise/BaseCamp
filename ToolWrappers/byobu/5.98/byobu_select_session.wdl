version 1.0

task Byobuselectsession {
  command <<<
    byobu_select_session
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}