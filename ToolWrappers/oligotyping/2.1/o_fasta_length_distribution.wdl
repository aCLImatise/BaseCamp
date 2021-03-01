version 1.0

task Ofastalengthdistribution {
  command <<<
    o_fasta_length_distribution
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}