version 1.0

task NebulizerAddKeyAPIKEY {
  input {
    String nebulizer
    String add_key
    String var_alias
    String galaxy_url
    String? api_key
  }
  command <<<
    nebulizer add_key API_KEY \
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