version 1.0

task NebulizerAddKey {
  input {
    String var_alias
    String galaxy_url
    String? api_key
  }
  command <<<
    nebulizer add_key \
      ~{var_alias} \
      ~{galaxy_url} \
      ~{api_key}
  >>>
  parameter_meta {
    var_alias: ""
    galaxy_url: ""
    api_key: ""
  }
}