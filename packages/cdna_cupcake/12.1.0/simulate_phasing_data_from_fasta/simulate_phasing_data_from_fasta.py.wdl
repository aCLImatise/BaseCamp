version 1.0

task SimulatePhasingDataFromFastapy {
  command <<<
    simulate_phasing_data_from_fasta_py
  >>>
  output {
    File out_stdout = stdout()
  }
}