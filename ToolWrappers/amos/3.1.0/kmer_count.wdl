version 1.0

task Kmercount {
  input {
    String km_er_cov
    String km_er
  }
  command <<<
    kmer_count \
      ~{km_er_cov} \
      ~{km_er}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    km_er_cov: ""
    km_er: ""
  }
  output {
    File out_stdout = stdout()
  }
}