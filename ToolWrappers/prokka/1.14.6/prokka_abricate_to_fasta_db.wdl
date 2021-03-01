version 1.0

task ProkkaabricateToFastaDb {
  command <<<
    prokka_abricate_to_fasta_db
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}