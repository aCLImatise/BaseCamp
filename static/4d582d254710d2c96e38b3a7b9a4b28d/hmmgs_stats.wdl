version 1.0

task HmmgsStats {
  input {
    String? bloomBloomFilterStats
    String? bloomBloomFilter
  }
  command <<<
    hmmgs stats \
      ~{bloomBloomFilterStats} \
      ~{bloomBloomFilter}
  >>>
}