version 1.0

task KmerCount {
  input {
    String? kmKmErCov
    String? kmKmEr
  }
  command <<<
    kmer-count \
      ~{kmKmErCov} \
      ~{kmKmEr}
  >>>
}