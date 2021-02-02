version 1.0

task DriveReport {
  command <<<
    drive report
  >>>
  output {
    File out_stdout = stdout()
  }
}