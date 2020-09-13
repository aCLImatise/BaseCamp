version 1.0

task Pairwise2mafpy {
  command <<<
    pairwise2maf_py
  >>>
  output {
    File out_stdout = stdout()
  }
}