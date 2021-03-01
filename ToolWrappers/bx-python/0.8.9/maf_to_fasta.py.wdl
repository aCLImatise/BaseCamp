version 1.0

task MafToFastapy {
  command <<<
    maf_to_fasta_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}