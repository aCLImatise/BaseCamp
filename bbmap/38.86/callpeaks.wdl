version 1.0

task Callpeaks.sh {
  input {
    String increases_dot
  }
  command <<<
    callpeaks.sh \
      ~{increases_dot}
  >>>
  parameter_meta {
    increases_dot: "Useful for kmer-frequency histograms."
  }
}