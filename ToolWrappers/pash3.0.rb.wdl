version 1.0

task Pash30rb {
  command <<<
    pash3_0_rb
  >>>
  output {
    File out_stdout = stdout()
  }
}