version 1.0

task IgdiscoverUnion {
  input {
    String fast_a
  }
  command <<<
    igdiscover union \
      ~{fast_a}
  >>>
  parameter_meta {
    fast_a: "FASTA file"
  }
  output {
    File out_stdout = stdout()
  }
}