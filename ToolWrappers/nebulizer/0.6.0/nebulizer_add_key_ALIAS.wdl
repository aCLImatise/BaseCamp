version 1.0

task NebulizerAddKeyALIAS {
  input {
    String galaxy_url
    String? api_key
  }
  command <<<
    nebulizer add_key ALIAS \
      ~{galaxy_url} \
      ~{api_key}
  >>>
  parameter_meta {
    galaxy_url: ""
    api_key: ""
  }
  output {
    File out_stdout = stdout()
  }
}