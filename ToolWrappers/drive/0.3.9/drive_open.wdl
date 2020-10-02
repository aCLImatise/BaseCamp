version 1.0

task DriveOpen {
  command <<<
    drive open
  >>>
  output {
    File out_stdout = stdout()
  }
}