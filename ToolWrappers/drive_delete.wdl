version 1.0

task DriveDelete {
  command <<<
    drive delete
  >>>
  output {
    File out_stdout = stdout()
  }
}