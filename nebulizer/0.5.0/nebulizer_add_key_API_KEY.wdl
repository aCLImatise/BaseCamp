version 1.0

task NebulizerAddKeyAPIKEY {
  input {
    String? optionsOptions
    String? aliasAlias
    String? galaxyGalaxyUrl
    String? apiApiKey
  }
  command <<<
    nebulizer add_key API_KEY \
      ~{optionsOptions} \
      ~{aliasAlias} \
      ~{galaxyGalaxyUrl} \
      ~{apiApiKey}
  >>>
}