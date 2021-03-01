version 1.0

task NovoutilKmers {
  input {
    String ref_idx
    String k
  }
  command <<<
    novoutil kmers \
      ~{ref_idx} \
      ~{k}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ref_idx: ""
    k: ""
  }
  output {
    File out_stdout = stdout()
  }
}