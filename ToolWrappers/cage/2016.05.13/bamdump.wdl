version 1.0

task Bamdump {
  command <<<
    bamdump
  >>>
  output {
    File out_stdout = stdout()
  }
}