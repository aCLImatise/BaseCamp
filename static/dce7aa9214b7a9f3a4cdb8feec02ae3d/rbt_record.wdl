version 1.0

task RbtRecord {
  input {
    String rbt
    String? flags
  }
  command <<<
    rbt record \
      ~{rbt} \
      ~{flags}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rust-bio-tools:0.20.0--heda7bfa_0"
  }
  parameter_meta {
    rbt: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}