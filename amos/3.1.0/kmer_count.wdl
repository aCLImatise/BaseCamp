version 1.0

task KmerCount {
  input {
    String km_er_cov
    String km_er
  }
  command <<<
    kmer-count \
      ~{km_er_cov} \
      ~{km_er}
  >>>
  parameter_meta {
    km_er_cov: ""
    km_er: ""
  }
}