version 1.0

task MetadataCondaDebugyaml {
  command <<<
    metadata_conda_debug_yaml
  >>>
  runtime {
    docker: "quay.io/biocontainers/gifrop:0.0.6--0"
  }
  output {
    File out_stdout = stdout()
  }
}