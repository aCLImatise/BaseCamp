version 1.0

task Circos {
  command <<<
    circos
  >>>
  output {
    File out_stdout = stdout()
  }
}