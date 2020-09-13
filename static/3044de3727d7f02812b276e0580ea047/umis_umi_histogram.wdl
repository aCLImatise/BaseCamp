version 1.0

task UmisUmiHistogram {
  input {
    String fast_q
  }
  command <<<
    umis umi_histogram \
      ~{fast_q}
  >>>
  parameter_meta {
    fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}