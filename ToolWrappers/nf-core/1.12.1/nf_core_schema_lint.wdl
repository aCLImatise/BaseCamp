version 1.0

task NfcoreSchemaLint {
  input {
    String pipeline_schema
  }
  command <<<
    nf_core schema lint \
      ~{pipeline_schema}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nf-core:1.12.1--pyh3252c3a_0"
  }
  parameter_meta {
    pipeline_schema: ""
  }
  output {
    File out_stdout = stdout()
  }
}