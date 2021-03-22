version 1.0

task SimulatePhasingDataFromFastapy {
  command <<<
    simulate_phasing_data_from_fasta_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0"
  }
  output {
    File out_stdout = stdout()
  }
}