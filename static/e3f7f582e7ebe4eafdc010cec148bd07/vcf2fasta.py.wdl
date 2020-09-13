version 1.0

task Vcf2fastapy {
  command <<<
    vcf2fasta_py
  >>>
  output {
    File out_stdout = stdout()
  }
}