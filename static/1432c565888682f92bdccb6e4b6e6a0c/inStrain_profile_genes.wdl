version 1.0

task InStrainProfileGenes {
  input {
    String geneGeneFile
    String isIs
    Boolean storeStoreEverything
    String processesProcesses
    Boolean debugDebug
  }
  command <<<
    inStrain profile_genes \
      ~{if defined(geneGeneFile) then ("--gene_file " +  '"' + geneGeneFile + '"') else ""} \
      ~{if defined(isIs) then ("--IS " +  '"' + isIs + '"') else ""} \
      ~{true="--store_everything" false="" storeStoreEverything} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}