version 1.0

task Fba010post1 {
  input {
    String fba
  }
  command <<<
    fba __0_10_post1 \
      ~{fba}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fba:0.0.10.post1--pyhdfd78af_0"
  }
  parameter_meta {
    fba: ""
  }
  output {
    File out_stdout = stdout()
  }
}