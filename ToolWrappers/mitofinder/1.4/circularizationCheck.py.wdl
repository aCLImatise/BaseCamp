version 1.0

task CircularizationCheckpy {
  input {
    String fast_a_file
  }
  command <<<
    circularizationCheck_py \
      ~{fast_a_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mitofinder:1.4--py27h516909a_0"
  }
  parameter_meta {
    fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}