version 1.0

task UmisKallisto {
  input {
    String fast_q
  }
  command <<<
    umis kallisto \
      ~{fast_q}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}