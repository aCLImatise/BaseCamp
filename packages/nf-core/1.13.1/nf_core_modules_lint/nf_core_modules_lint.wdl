version 1.0

task NfcoreModulesLint {
  input {
    String? tool
    Boolean? local
    Boolean? passed
    String repository_dot
  }
  command <<<
    nf_core modules lint \
      ~{repository_dot} \
      ~{if defined(tool) then ("--tool " +  '"' + tool + '"') else ""} \
      ~{if (local) then "--local" else ""} \
      ~{if (passed) then "--passed" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nf-core:1.13.1--pyh3252c3a_0"
  }
  parameter_meta {
    tool: "or <tool/subtool>"
    local: "Run additional lint tests for local modules"
    passed: "Show passed tests"
    repository_dot: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}