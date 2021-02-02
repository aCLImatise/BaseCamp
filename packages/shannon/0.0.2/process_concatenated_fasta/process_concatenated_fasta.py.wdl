version 1.0

task ProcessConcatenatedFastapy {
  command <<<
    process_concatenated_fasta_py
  >>>
  output {
    File out_stdout = stdout()
  }
}