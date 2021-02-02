version 1.0

task DriveStar {
  command <<<
    drive star
  >>>
  output {
    File out_stdout = stdout()
  }
}