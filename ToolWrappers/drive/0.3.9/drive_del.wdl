version 1.0

task DriveDel {
  command <<<
    drive del
  >>>
  output {
    File out_stdout = stdout()
  }
}