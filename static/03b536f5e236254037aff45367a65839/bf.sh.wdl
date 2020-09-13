version 1.0

task Bfsh {
  command <<<
    bf_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}