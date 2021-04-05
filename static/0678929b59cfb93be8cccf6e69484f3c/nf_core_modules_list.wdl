version 1.0

task NfcoreModulesList {
  input {
    Boolean? json
  }
  command <<<
    nf_core modules list \
      ~{if (json) then "--json" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nf-core:1.13.3--pyh3252c3a_0"
  }
  parameter_meta {
    json: "Print as JSON to stdout"
  }
  output {
    File out_stdout = stdout()
  }
}