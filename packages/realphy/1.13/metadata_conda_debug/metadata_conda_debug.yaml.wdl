version 1.0

task MetadataCondaDebugyaml {
  command <<<
    metadata_conda_debug_yaml
  >>>
  runtime {
    docker: "quay.io/biocontainers/realphy:1.13--0"
  }
  output {
    File out_stdout = stdout()
  }
}