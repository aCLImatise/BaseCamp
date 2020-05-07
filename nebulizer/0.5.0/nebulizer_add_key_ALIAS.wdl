version 1.0

task NebulizerAddKeyALIAS {
  input {
    String? optionsOptions
    String? aliasAlias
    String? galaxyGalaxyUrl
    String? apiApiKey
  }
  command <<<
    nebulizer add_key ALIAS \
      ~{optionsOptions} \
      ~{aliasAlias} \
      ~{galaxyGalaxyUrl} \
      ~{apiApiKey}
  >>>
}