version 1.0

task NebulizerAddKeyOPTIONS {
  input {
    String? aliasAlias
    String? galaxyGalaxyUrl
    String? apiApiKey
  }
  command <<<
    nebulizer add_key OPTIONS \
      ~{aliasAlias} \
      ~{galaxyGalaxyUrl} \
      ~{apiApiKey}
  >>>
}