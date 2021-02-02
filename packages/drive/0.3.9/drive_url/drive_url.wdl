version 1.0

task DriveUrl {
  command <<<
    drive url
  >>>
  output {
    File out_stdout = stdout()
  }
}