version 1.0

task NfcoreModulesList {
  input {
    String repository_dot
  }
  command <<<
    nf_core modules list \
      ~{repository_dot}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nf-core:1.12.1--pyh3252c3a_0"
  }
  parameter_meta {
    repository_dot: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}