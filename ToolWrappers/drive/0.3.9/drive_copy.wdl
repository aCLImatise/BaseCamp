version 1.0

task DriveCopy {
  command <<<
    drive copy
  >>>
  output {
    File out_stdout = stdout()
  }
}