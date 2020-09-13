version 1.0

task Jaffadirect {
  command <<<
    jaffa_direct
  >>>
  output {
    File out_stdout = stdout()
  }
}