version 1.0

task DriveClashes {
  command <<<
    drive clashes
  >>>
  output {
    File out_stdout = stdout()
  }
}