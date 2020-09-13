version 1.0

task Rbrms {
  command <<<
    rbrms
  >>>
  output {
    File out_stdout = stdout()
  }
}