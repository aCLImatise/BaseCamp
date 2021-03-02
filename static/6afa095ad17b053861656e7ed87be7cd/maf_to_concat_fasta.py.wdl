version 1.0

task MafToConcatFastapy {
  command <<<
    maf_to_concat_fasta_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}