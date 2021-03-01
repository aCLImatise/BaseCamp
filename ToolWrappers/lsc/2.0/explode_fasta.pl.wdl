version 1.0

task ExplodeFastapl {
  command <<<
    explode_fasta_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}