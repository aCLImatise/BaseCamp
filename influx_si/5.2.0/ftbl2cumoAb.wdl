version 1.0

task Ftbl2cumoAb {
  command <<<
    ftbl2cumoAb
  >>>
  output {
    File out_stdout = stdout()
  }
}