version 1.0

task Fastg2fastapy {
  command <<<
    fastg2fasta_py
  >>>
  output {
    File out_stdout = stdout()
  }
}