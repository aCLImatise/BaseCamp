version 1.0

task DeepacExplainDetails {
  input {
    String deep_ac
    String explain
  }
  command <<<
    deepac explain details_ \
      ~{deep_ac} \
      ~{explain}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepac:0.13.6--py_0"
  }
  parameter_meta {
    deep_ac: ""
    explain: ""
  }
  output {
    File out_stdout = stdout()
  }
}