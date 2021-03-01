version 1.0

task ProcessConcatenatedFastapy {
  command <<<
    process_concatenated_fasta_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}