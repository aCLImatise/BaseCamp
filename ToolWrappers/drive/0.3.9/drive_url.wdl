version 1.0

task DriveUrl {
  command <<<
    drive url
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}