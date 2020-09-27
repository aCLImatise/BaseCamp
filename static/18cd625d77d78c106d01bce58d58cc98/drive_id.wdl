version 1.0

task DriveId {
  command <<<
    drive id
  >>>
  output {
    File out_stdout = stdout()
  }
}