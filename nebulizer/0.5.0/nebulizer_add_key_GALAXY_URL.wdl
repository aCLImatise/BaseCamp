version 1.0

task NebulizerAddKeyGALAXYURL {
  input {
    String? optionsOptions
    String? aliasAlias
    String? galaxyGalaxyUrl
    String? apiApiKey
  }
  command <<<
    nebulizer add_key GALAXY_URL \
      ~{optionsOptions} \
      ~{aliasAlias} \
      ~{galaxyGalaxyUrl} \
      ~{apiApiKey}
  >>>
}