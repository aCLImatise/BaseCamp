version 1.0

task DriveCp {
  command <<<
    drive cp
  >>>
  output {
    File out_stdout = stdout()
  }
}