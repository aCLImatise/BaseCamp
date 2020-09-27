version 1.0

task DriveFileid {
  command <<<
    drive file_id
  >>>
  output {
    File out_stdout = stdout()
  }
}