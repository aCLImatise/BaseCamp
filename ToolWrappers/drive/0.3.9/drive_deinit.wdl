version 1.0

task DriveDeinit {
  command <<<
    drive deinit
  >>>
  output {
    File out_stdout = stdout()
  }
}