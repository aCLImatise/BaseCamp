version 1.0

task DriveUnpub {
  command <<<
    drive unpub
  >>>
  output {
    File out_stdout = stdout()
  }
}