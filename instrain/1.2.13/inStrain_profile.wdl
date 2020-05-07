version 1.0

task InStrainProfile {
  input {
    String outputOutput
    Boolean useUseFullFastAHeader
    String processesProcesses
    Boolean debugDebug
    String filterFilterCutOff
    Int minMinMapq
    Int maxMaxInsertRelative
    Int minMinInsert
    String pairingPairingFilter
    String priorityPriorityReads
    Boolean scaffoldScaffoldLevelReadReport
    Boolean deDeATiledReadReport
    Int minMinCov
    Int minMinFreq
    String fdrFdr
    String geneGeneFile
    Boolean sS
    Boolean mmMmLevel
    Int minMinSnp
    Int minMinFastAReads
    Boolean storeStoreEverything
    Boolean skipSkipMmProfiling
    String scaffoldsScaffoldsToProfile
    String rarefiedRarefiedCoverage
    Boolean skipSkipGenomeWide
    Boolean skipSkipPlotGeneration
    String? bamBam
    String? fastFastA
  }
  command <<<
    inStrain profile \
      ~{bamBam} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--use_full_fasta_header" false="" useUseFullFastAHeader} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(filterFilterCutOff) then ("--filter_cutoff " +  '"' + filterFilterCutOff + '"') else ""} \
      ~{if defined(minMinMapq) then ("--min_mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{if defined(maxMaxInsertRelative) then ("--max_insert_relative " +  '"' + maxMaxInsertRelative + '"') else ""} \
      ~{if defined(minMinInsert) then ("--min_insert " +  '"' + minMinInsert + '"') else ""} \
      ~{if defined(pairingPairingFilter) then ("--pairing_filter " +  '"' + pairingPairingFilter + '"') else ""} \
      ~{if defined(priorityPriorityReads) then ("--priority_reads " +  '"' + priorityPriorityReads + '"') else ""} \
      ~{true="--scaffold_level_read_report" false="" scaffoldScaffoldLevelReadReport} \
      ~{true="--deatiled_read_report" false="" deDeATiledReadReport} \
      ~{if defined(minMinCov) then ("--min_cov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(minMinFreq) then ("--min_freq " +  '"' + minMinFreq + '"') else ""} \
      ~{if defined(fdrFdr) then ("--fdr " +  '"' + fdrFdr + '"') else ""} \
      ~{if defined(geneGeneFile) then ("--gene_file " +  '"' + geneGeneFile + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="--mm_level" false="" mmMmLevel} \
      ~{if defined(minMinSnp) then ("--min_snp " +  '"' + minMinSnp + '"') else ""} \
      ~{if defined(minMinFastAReads) then ("--min_fasta_reads " +  '"' + minMinFastAReads + '"') else ""} \
      ~{true="--store_everything" false="" storeStoreEverything} \
      ~{true="--skip_mm_profiling" false="" skipSkipMmProfiling} \
      ~{if defined(scaffoldsScaffoldsToProfile) then ("--scaffolds_to_profile " +  '"' + scaffoldsScaffoldsToProfile + '"') else ""} \
      ~{if defined(rarefiedRarefiedCoverage) then ("--rarefied_coverage " +  '"' + rarefiedRarefiedCoverage + '"') else ""} \
      ~{true="--skip_genome_wide" false="" skipSkipGenomeWide} \
      ~{true="--skip_plot_generation" false="" skipSkipPlotGeneration} \
      ~{fastFastA}
  >>>
}