version 1.0

task DriveAbout {
  command <<<
    drive about
  >>>
  output {
    File out_stdout = stdout()
  }
}