version 1.0

task Axiome {
  command <<<
    axiome
  >>>
  output {
    File out_stdout = stdout()
  }
}