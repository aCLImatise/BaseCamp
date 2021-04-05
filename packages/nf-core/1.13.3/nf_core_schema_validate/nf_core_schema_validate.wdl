version 1.0

task NfcoreSchemaValidate {
  input {
    String pipeline_name
    File json_params_file
  }
  command <<<
    nf_core schema validate \
      ~{pipeline_name} \
      ~{json_params_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nf-core:1.13.3--pyh3252c3a_0"
  }
  parameter_meta {
    pipeline_name: ""
    json_params_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}