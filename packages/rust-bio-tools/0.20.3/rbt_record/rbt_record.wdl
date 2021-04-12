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
    docker: "quay.io/biocontainers/rust-bio-tools:0.20.3--h4eb7995_3"
  }
  parameter_meta {
    rbt: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}