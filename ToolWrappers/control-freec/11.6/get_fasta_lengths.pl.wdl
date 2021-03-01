version 1.0

task GetFastaLengthspl {
  command <<<
    get_fasta_lengths_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}