version 1.0

task NebulizerUpdateKey {
  input {
    String? new_url
    String? new_api_key
    Boolean? fetch_api_key
    String var_alias
  }
  command <<<
    nebulizer update_key \
      ~{var_alias} \
      ~{if defined(new_url) then ("--new-url " +  '"' + new_url + '"') else ""} \
      ~{if defined(new_api_key) then ("--new-api-key " +  '"' + new_api_key + '"') else ""} \
      ~{if (fetch_api_key) then "--fetch-api-key" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    new_url: "specify new URL for Galaxy instance"
    new_api_key: "specify new API key for Galaxy instance"
    fetch_api_key: "fetch new API key for Galaxy instance"
    var_alias: ""
  }
  output {
    File out_stdout = stdout()
  }
}