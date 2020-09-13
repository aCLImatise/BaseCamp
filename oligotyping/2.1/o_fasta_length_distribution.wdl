version 1.0

task Ofastalengthdistribution {
  command <<<
    o_fasta_length_distribution
  >>>
  output {
    File out_stdout = stdout()
  }
}