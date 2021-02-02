version 1.0

task Automakebak {
  command <<<
    automake_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}