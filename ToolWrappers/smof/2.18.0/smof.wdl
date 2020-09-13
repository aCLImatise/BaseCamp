version 1.0

task Smof {
  command <<<
    smof
  >>>
  output {
    File out_stdout = stdout()
  }
}