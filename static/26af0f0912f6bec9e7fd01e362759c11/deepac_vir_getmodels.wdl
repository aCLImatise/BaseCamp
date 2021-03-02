version 1.0

task DeepacvirGetmodels {
  input {
    Boolean? sensitive
    Boolean? rapid
    String deep_ac
    String get_models
  }
  command <<<
    deepac_vir getmodels \
      ~{deep_ac} \
      ~{get_models} \
      ~{if (sensitive) then "--sensitive" else ""} \
      ~{if (rapid) then "--rapid" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepacvir:0.2.2--py_0"
  }
  parameter_meta {
    sensitive: "Rebuild the sensitive model."
    rapid: "Rebuild the rapid CNN model."
    deep_ac: ""
    get_models: ""
  }
  output {
    File out_stdout = stdout()
  }
}