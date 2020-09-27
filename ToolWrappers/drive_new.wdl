version 1.0

task DriveNew {
  command <<<
    drive new
  >>>
  output {
    File out_stdout = stdout()
  }
}