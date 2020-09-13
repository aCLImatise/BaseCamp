version 1.0

task Ctresc03pdb {
  command <<<
    ctresc03_pdb
  >>>
  output {
    File out_stdout = stdout()
  }
}