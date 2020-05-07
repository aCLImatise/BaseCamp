version 1.0

task EnrichmExplore {
  input {
    String queriesQueries
    String matrixMatrix
    String genomeGenomeMetadata
    String abundanceAbundance
    String abundanceAbundanceMetadata
    String tpmTpmValues
    String tpmTpmMetadata
    String metaboMetaboLome
    String logLog
    String verbosityVerbosity
    String outputOutput
    Boolean forceForce
    String queriesQueries
    String depthDepth
  }
  command <<<
    enrichm explore \
      ~{if defined(queriesQueries) then ("--queries " +  '"' + queriesQueries + '"') else ""} \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(genomeGenomeMetadata) then ("--genome_metadata " +  '"' + genomeGenomeMetadata + '"') else ""} \
      ~{if defined(abundanceAbundance) then ("--abundance " +  '"' + abundanceAbundance + '"') else ""} \
      ~{if defined(abundanceAbundanceMetadata) then ("--abundance_metadata " +  '"' + abundanceAbundanceMetadata + '"') else ""} \
      ~{if defined(tpmTpmValues) then ("--tpm_values " +  '"' + tpmTpmValues + '"') else ""} \
      ~{if defined(tpmTpmMetadata) then ("--tpm_metadata " +  '"' + tpmTpmMetadata + '"') else ""} \
      ~{if defined(metaboMetaboLome) then ("--metabolome " +  '"' + metaboMetaboLome + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(queriesQueries) then ("--queries " +  '"' + queriesQueries + '"') else ""} \
      ~{if defined(depthDepth) then ("--depth " +  '"' + depthDepth + '"') else ""}
  >>>
}