version 1.0

task NextstrainUpdate {
  input {
    String next_strain
  }
  command <<<
    nextstrain update \
      ~{next_strain}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nextstrain-cli:3.0.3--py_0"
  }
  parameter_meta {
    next_strain: ""
  }
  output {
    File out_stdout = stdout()
  }
}