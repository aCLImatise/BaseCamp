version 1.0

task UniqPolishes {
  command <<<
    uniqPolishes
  >>>
  output {
    File out_stdout = stdout()
  }
}