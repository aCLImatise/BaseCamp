version 1.0

task DeepacstrainTemplates {
  input {
    String deep_ac
    String templates
  }
  command <<<
    deepac_strain templates \
      ~{deep_ac} \
      ~{templates}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepacstrain:0.2.1--py_0"
  }
  parameter_meta {
    deep_ac: ""
    templates: ""
  }
  output {
    File out_stdout = stdout()
  }
}