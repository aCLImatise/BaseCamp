version 1.0

task DriveUnstar {
  command <<<
    drive unstar
  >>>
  output {
    File out_stdout = stdout()
  }
}