version 1.0

task DriveEmptytrash {
  command <<<
    drive emptytrash
  >>>
  output {
    File out_stdout = stdout()
  }
}