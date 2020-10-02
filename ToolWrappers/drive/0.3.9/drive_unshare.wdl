version 1.0

task DriveUnshare {
  command <<<
    drive unshare
  >>>
  output {
    File out_stdout = stdout()
  }
}