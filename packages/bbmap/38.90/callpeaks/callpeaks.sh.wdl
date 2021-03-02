version 1.0

task Callpeakssh {
  input {
    String increases_dot
  }
  command <<<
    callpeaks_sh \
      ~{increases_dot}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bbmap:38.90--h1296035_0"
  }
  parameter_meta {
    increases_dot: "Useful for kmer-frequency histograms."
  }
  output {
    File out_stdout = stdout()
  }
}