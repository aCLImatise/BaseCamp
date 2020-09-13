version 1.0

task Go2owl {
  command <<<
    go2owl
  >>>
  output {
    File out_stdout = stdout()
  }
}