version 1.0

task NfcoreModulesUpdate {
  input {
    Boolean? force
    Directory pipeline_directory
    String tool_name
  }
  command <<<
    nf_core modules update \
      ~{pipeline_directory} \
      ~{tool_name} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nf-core:1.12.1--pyh3252c3a_0"
  }
  parameter_meta {
    force: "Force overwrite of files"
    pipeline_directory: ""
    tool_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}