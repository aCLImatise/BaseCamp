version 1.0

task DriveIssue {
  command <<<
    drive issue
  >>>
  output {
    File out_stdout = stdout()
  }
}