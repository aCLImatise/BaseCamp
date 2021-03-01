version 1.0

task ChewBBACApy {
  input {
    String? module
  }
  command <<<
    chewBBACA_py \
      ~{module}
  >>>
  runtime {
    docker: "quay.io/biocontainers/chewbbaca:2.6.0--py_0"
  }
  parameter_meta {
    module: ""
  }
  output {
    File out_stdout = stdout()
  }
}