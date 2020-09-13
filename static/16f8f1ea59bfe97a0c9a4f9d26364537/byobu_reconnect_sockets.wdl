version 1.0

task Byobureconnectsockets {
  command <<<
    byobu_reconnect_sockets
  >>>
  output {
    File out_stdout = stdout()
  }
}