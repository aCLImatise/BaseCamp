version 1.0

task Findrule {
  command <<<
    findrule
  >>>
  output {
    File out_stdout = stdout()
  }
}