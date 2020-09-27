version 1.0

task DriveMove {
  command <<<
    drive move
  >>>
  output {
    File out_stdout = stdout()
  }
}