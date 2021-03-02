version 1.0

task UmisAddUid {
  input {
    String fast_q
  }
  command <<<
    umis add_uid \
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