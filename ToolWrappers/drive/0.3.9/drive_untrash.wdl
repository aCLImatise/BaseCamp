version 1.0

task DriveUntrash {
  command <<<
    drive untrash
  >>>
  output {
    File out_stdout = stdout()
  }
}