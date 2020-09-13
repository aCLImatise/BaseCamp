version 1.0

task ProkkabiocycToFastaDb {
  command <<<
    prokka_biocyc_to_fasta_db
  >>>
  output {
    File out_stdout = stdout()
  }
}