version 1.0

task PhylophlanWriteConfigFile {
  input {
    String outputOutput
    String dbDbType
    String dbDbDna
    String dbDbAa
    String mapMapDna
    String mapMapAa
    String msaMsa
    String trimTrim
    String geneGeneTree1
    String geneGeneTree2
    String tree1Tree1
    String tree2Tree2
    Boolean absoluteAbsolutePath
    Boolean forceForceNucleotides
    Boolean overwriteOverwrite
    Boolean verboseVerbose
  }
  command <<<
    phylophlan_write_config_file \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(dbDbType) then ("--db_type " +  '"' + dbDbType + '"') else ""} \
      ~{if defined(dbDbDna) then ("--db_dna " +  '"' + dbDbDna + '"') else ""} \
      ~{if defined(dbDbAa) then ("--db_aa " +  '"' + dbDbAa + '"') else ""} \
      ~{if defined(mapMapDna) then ("--map_dna " +  '"' + mapMapDna + '"') else ""} \
      ~{if defined(mapMapAa) then ("--map_aa " +  '"' + mapMapAa + '"') else ""} \
      ~{if defined(msaMsa) then ("--msa " +  '"' + msaMsa + '"') else ""} \
      ~{if defined(trimTrim) then ("--trim " +  '"' + trimTrim + '"') else ""} \
      ~{if defined(geneGeneTree1) then ("--gene_tree1 " +  '"' + geneGeneTree1 + '"') else ""} \
      ~{if defined(geneGeneTree2) then ("--gene_tree2 " +  '"' + geneGeneTree2 + '"') else ""} \
      ~{if defined(tree1Tree1) then ("--tree1 " +  '"' + tree1Tree1 + '"') else ""} \
      ~{if defined(tree2Tree2) then ("--tree2 " +  '"' + tree2Tree2 + '"') else ""} \
      ~{true="--absolute_path" false="" absoluteAbsolutePath} \
      ~{true="--force_nucleotides" false="" forceForceNucleotides} \
      ~{true="--overwrite" false="" overwriteOverwrite} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}