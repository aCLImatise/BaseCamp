version 1.0

task NebulizerUpdateKey {
  input {
    String newNewUrl
    String newNewApiKey
    Boolean fetchFetchApiKey
  }
  command <<<
    nebulizer update_key \
      ~{if defined(newNewUrl) then ("--new-url " +  '"' + newNewUrl + '"') else ""} \
      ~{if defined(newNewApiKey) then ("--new-api-key " +  '"' + newNewApiKey + '"') else ""} \
      ~{true="--fetch-api-key" false="" fetchFetchApiKey}
  >>>
}