version 1.0

task DriveRename {
  command <<<
    drive rename
  >>>
  output {
    File out_stdout = stdout()
  }
}