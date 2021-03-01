version 1.0

task MixedModelpy {
  command <<<
    mixed_model_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/nanosim:2.6.0--0"
  }
  output {
    File out_stdout = stdout()
  }
}