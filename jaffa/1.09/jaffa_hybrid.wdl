version 1.0

task Jaffahybrid {
  command <<<
    jaffa_hybrid
  >>>
  output {
    File out_stdout = stdout()
  }
}