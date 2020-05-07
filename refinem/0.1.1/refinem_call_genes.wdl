version 1.0

task RefinemCallGenes {
  input {
    String unbinnedUnbinnedFile
    String genomeGenomeExt
    String cpusCpus
    Boolean silentSilent
    String? genomeGenomeNtDir
    String? outputOutputDir
  }
  command <<<
    refinem call_genes \
      ~{genomeGenomeNtDir} \
      ~{if defined(unbinnedUnbinnedFile) then ("--unbinned_file " +  '"' + unbinnedUnbinnedFile + '"') else ""} \
      ~{if defined(genomeGenomeExt) then ("--genome_ext " +  '"' + genomeGenomeExt + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{true="--silent" false="" silentSilent} \
      ~{outputOutputDir}
  >>>
}