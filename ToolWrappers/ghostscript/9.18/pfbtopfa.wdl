version 1.0

task Pfbtopfa {
  command <<<
    pfbtopfa
  >>>
  output {
    File out_stdout = stdout()
  }
}