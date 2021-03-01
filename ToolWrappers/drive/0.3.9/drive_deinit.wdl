version 1.0

task DriveDeinit {
  command <<<
    drive deinit
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}