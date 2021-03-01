version 1.0

task SimulatePhasingDataFromFastapy {
  command <<<
    simulate_phasing_data_from_fasta_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}