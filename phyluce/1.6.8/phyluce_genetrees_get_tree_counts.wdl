version 1.0

task PhyluceGenetreesGetTreeCounts {
  input {
    String treesTrees
    String locusLocusSupportOutput
    String schemaSchema
    String rootRoot
    String extensionExtension
    Array[String]+ excludeExclude
  }
  command <<<
    phyluce_genetrees_get_tree_counts \
      ~{if defined(treesTrees) then ("--trees " +  '"' + treesTrees + '"') else ""} \
      ~{if defined(locusLocusSupportOutput) then ("--locus-support-output " +  '"' + locusLocusSupportOutput + '"') else ""} \
      ~{if defined(schemaSchema) then ("--schema " +  '"' + schemaSchema + '"') else ""} \
      ~{if defined(rootRoot) then ("--root " +  '"' + rootRoot + '"') else ""} \
      ~{if defined(extensionExtension) then ("--extension " +  '"' + extensionExtension + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""}
  >>>
}