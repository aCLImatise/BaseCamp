version 1.0

task Ftbl2optR {
  command <<<
    ftbl2optR
  >>>
  output {
    File out_stdout = stdout()
  }
}