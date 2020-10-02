version 1.0

task N50 {
  command <<<
    n50
  >>>
  output {
    File out_stdout = stdout()
  }
}