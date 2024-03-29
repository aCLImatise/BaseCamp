version 1.0

task DeepacGwpaDetails {
  input {
    String deep_ac
    String gwp_a
  }
  command <<<
    deepac gwpa details_ \
      ~{deep_ac} \
      ~{gwp_a}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepac:0.13.6--py_0"
  }
  parameter_meta {
    deep_ac: ""
    gwp_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}