version 1.0

task Bed2fastapy {
  command <<<
    bed2fasta_py
  >>>
  output {
    File out_stdout = stdout()
  }
}