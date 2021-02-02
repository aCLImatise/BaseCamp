version 1.0

task Residc03pdb {
  command <<<
    residc03_pdb
  >>>
  output {
    File out_stdout = stdout()
  }
}