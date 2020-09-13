version 1.0

task Biscuit {
  command <<<
    biscuit
  >>>
  output {
    File out_stdout = stdout()
  }
}