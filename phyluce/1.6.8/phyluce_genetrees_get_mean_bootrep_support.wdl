version 1.0

task PhyluceGenetreesGetMeanBootrepSupport {
  input {
    String treesTrees
    String configConfig
    String schemaSchema
    String rootRoot
  }
  command <<<
    phyluce_genetrees_get_mean_bootrep_support \
      ~{if defined(treesTrees) then ("--trees " +  '"' + treesTrees + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(schemaSchema) then ("--schema " +  '"' + schemaSchema + '"') else ""} \
      ~{if defined(rootRoot) then ("--root " +  '"' + rootRoot + '"') else ""}
  >>>
}