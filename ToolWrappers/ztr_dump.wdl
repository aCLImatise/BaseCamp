version 1.0

task ZtrDump {
  command <<<
    ztr_dump
  >>>
  output {
    File out_stdout = stdout()
  }
}