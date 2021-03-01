version 1.0

task Byobureconnectsockets {
  command <<<
    byobu_reconnect_sockets
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}