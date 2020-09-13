version 1.0

task Gmapindex {
  command <<<
    gmapindex
  >>>
  output {
    File out_stdout = stdout()
  }
}