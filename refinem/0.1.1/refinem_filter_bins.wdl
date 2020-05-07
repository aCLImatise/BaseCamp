version 1.0

task RefinemFilterBins {
  input {
    String genomeGenomeExt
    Boolean modifiedModifiedOnly
    Boolean silentSilent
    String? genomeGenomeNtDir
    String? filterFilterFile
    String? outputOutputDir
  }
  command <<<
    refinem filter_bins \
      ~{genomeGenomeNtDir} \
      ~{if defined(genomeGenomeExt) then ("--genome_ext " +  '"' + genomeGenomeExt + '"') else ""} \
      ~{true="--modified_only" false="" modifiedModifiedOnly} \
      ~{true="--silent" false="" silentSilent} \
      ~{filterFilterFile} \
      ~{outputOutputDir}
  >>>
}