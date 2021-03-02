version 1.0

task NfcoreModulesRemove {
  input {
    Directory pipeline_directory
    String tool_name
  }
  command <<<
    nf_core modules remove \
      ~{pipeline_directory} \
      ~{tool_name}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nf-core:1.12.1--pyh3252c3a_0"
  }
  parameter_meta {
    pipeline_directory: ""
    tool_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}