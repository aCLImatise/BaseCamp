version 1.0

task Coverage3 {
  command <<<
    coverage3
  >>>
  output {
    File out_stdout = stdout()
  }
}