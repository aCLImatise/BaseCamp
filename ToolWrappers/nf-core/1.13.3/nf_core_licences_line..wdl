version 1.0

task NfcoreLicencesLine {
  input {
    String nf_core
    String licences
    String pipeline_name
  }
  command <<<
    nf_core licences line_ \
      ~{nf_core} \
      ~{licences} \
      ~{pipeline_name}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nf-core:1.13.3--pyh3252c3a_0"
  }
  parameter_meta {
    nf_core: ""
    licences: ""
    pipeline_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}