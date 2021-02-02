version 1.0

task Cs {
  command <<<
    cs
  >>>
  output {
    File out_stdout = stdout()
  }
}