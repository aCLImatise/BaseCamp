version 1.0

task NebulizerAddKeyGALAXYURL {
  input {
    String nebulizer
    String add_key
    String var_alias
    String galaxy_url
    String? api_key
  }
  command <<<
    nebulizer add_key GALAXY_URL \
      ~{nebulizer} \
      ~{add_key} \
      ~{var_alias} \
      ~{galaxy_url} \
      ~{api_key}
  >>>
  parameter_meta {
    nebulizer: ""
    add_key: ""
    var_alias: ""
    galaxy_url: ""
    api_key: ""
  }
  output {
    File out_stdout = stdout()
  }
}