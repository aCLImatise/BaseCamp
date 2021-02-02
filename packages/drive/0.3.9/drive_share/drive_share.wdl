version 1.0

task DriveShare {
  command <<<
    drive share
  >>>
  output {
    File out_stdout = stdout()
  }
}