version 1.0

task MetadataCondaDebugyaml {
  command <<<
    metadata_conda_debug_yaml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}