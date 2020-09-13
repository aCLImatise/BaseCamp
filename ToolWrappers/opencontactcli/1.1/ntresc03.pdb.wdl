version 1.0

task Ntresc03pdb {
  command <<<
    ntresc03_pdb
  >>>
  output {
    File out_stdout = stdout()
  }
}