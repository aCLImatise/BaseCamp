version 1.0

task Norm {
  command <<<
    norm
  >>>
  output {
    File out_stdout = stdout()
  }
}