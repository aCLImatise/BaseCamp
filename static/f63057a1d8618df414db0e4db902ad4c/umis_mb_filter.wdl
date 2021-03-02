version 1.0

task UmisMbFilter {
  input {
    String fast_q
  }
  command <<<
    umis mb_filter \
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