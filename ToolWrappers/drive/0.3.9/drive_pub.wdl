version 1.0

task DrivePub {
  command <<<
    drive pub
  >>>
  output {
    File out_stdout = stdout()
  }
}