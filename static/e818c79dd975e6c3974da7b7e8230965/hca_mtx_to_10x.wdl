version 1.0

task Hcamtxto10x {
  input {
    String in
    String? out
  }
  command <<<
    hca_mtx_to_10x \
      ~{in} \
      ~{out}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: ""
    out: ""
  }
  output {
    File out_stdout = stdout()
  }
}