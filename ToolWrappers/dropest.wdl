version 1.0

task Dropest {
  command <<<
    dropest
  >>>
  output {
    File out_stdout = stdout()
  }
}