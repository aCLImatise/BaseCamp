version 1.0

task Vcf2fastapy {
  command <<<
    vcf2fasta_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}