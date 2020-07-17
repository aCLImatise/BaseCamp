version 1.0

task FastaFetch {
  input {
    String fast_a
  }
  command <<<
    fasta-fetch \
      ~{fast_a}
  >>>
  parameter_meta {
    fast_a: ""
  }
}