version 1.0

task AxtToFastapy {
  command <<<
    axt_to_fasta_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}