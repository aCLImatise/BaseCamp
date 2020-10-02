version 1.0

task DriveTrash {
  command <<<
    drive trash
  >>>
  output {
    File out_stdout = stdout()
  }
}