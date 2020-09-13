version 1.0

task Pedump {
  command <<<
    pedump
  >>>
  output {
    File out_stdout = stdout()
  }
}