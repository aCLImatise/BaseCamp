version 1.0

task GaasOrthomclAnalyzeOG.pl {
  input {
    String treeTree
    String speciesSpecies
  }
  command <<<
    gaas_orthomcl_analyzeOG.pl \
      ~{if defined(treeTree) then ("--tree " +  '"' + treeTree + '"') else ""} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""}
  >>>
}