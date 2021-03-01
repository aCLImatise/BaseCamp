version 1.0

task CARNACToFastapy {
  command <<<
    CARNAC_to_fasta_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}