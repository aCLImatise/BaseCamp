version 1.0

task ProkkauniprotToFastaDb {
  command <<<
    prokka_uniprot_to_fasta_db
  >>>
  output {
    File out_stdout = stdout()
  }
}