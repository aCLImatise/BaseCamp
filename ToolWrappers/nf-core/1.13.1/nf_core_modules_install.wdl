version 1.0

task NfcoreModulesInstall {
  input {
    String? tool
    Directory pipeline_directory
  }
  command <<<
    nf_core modules install \
      ~{pipeline_directory} \
      ~{if defined(tool) then ("--tool " +  '"' + tool + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nf-core:1.13.1--pyh3252c3a_0"
  }
  parameter_meta {
    tool: "or <tool/subtool>"
    pipeline_directory: ""
  }
  output {
    File out_stdout = stdout()
  }
}