version 1.0

task Drive {
  command <<<
    drive
  >>>
  output {
    File out_stdout = stdout()
  }
}