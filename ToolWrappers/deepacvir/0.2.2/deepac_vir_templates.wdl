version 1.0

task DeepacvirTemplates {
  input {
    String deep_ac
    String templates
  }
  command <<<
    deepac_vir templates \
      ~{deep_ac} \
      ~{templates}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepacvir:0.2.2--py_0"
  }
  parameter_meta {
    deep_ac: ""
    templates: ""
  }
  output {
    File out_stdout = stdout()
  }
}