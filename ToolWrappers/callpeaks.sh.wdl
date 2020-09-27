version 1.0

task Callpeakssh {
  input {
    String increases_dot
  }
  command <<<
    callpeaks_sh \
      ~{increases_dot}
  >>>
  parameter_meta {
    increases_dot: "Useful for kmer-frequency histograms."
  }
  output {
    File out_stdout = stdout()
  }
}