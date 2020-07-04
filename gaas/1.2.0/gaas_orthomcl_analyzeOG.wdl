version 1.0

task GaasOrthomclAnalyzeOG.pl {
  input {
    String? tree
    String? species
  }
  command <<<
    gaas_orthomcl_analyzeOG.pl \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  parameter_meta {
    tree: "Tree file in nhx format. If provided the analyse will focuse only on species present in the tree. When no tree is provided, a species tree will be created on the fly using the NCBI taxonomy database online according to the species present among the OG."
    species: "taxid or scientific name (use underscore instead of spaces). It allows to focus the analysis only on OG containg the species defined."
  }
}