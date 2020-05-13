version 1.0

task NebulizerRemoveKey {
  input {
    String? optionsOptions
    String? aliasAlias
  }
  command <<<
    nebulizer remove_key \
      ~{optionsOptions} \
      ~{aliasAlias}
  >>>
}