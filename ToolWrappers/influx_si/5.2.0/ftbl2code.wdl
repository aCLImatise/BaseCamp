version 1.0

task Ftbl2code {
  command <<<
    ftbl2code
  >>>
  output {
    File out_stdout = stdout()
  }
}