version 1.0

task GtfGenomeToCdnaFastapl {
  command <<<
    gtf_genome_to_cdna_fasta_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}