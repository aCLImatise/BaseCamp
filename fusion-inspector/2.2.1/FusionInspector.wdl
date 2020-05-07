version 1.0

task FusionInspector {
  input {
    String fusionsFusions
    String leftLeftFq
    String rightRightFq
    String genomeGenomeLibDir
    String samplesSamplesFile
    String outputOutputDir
    String outOutPrefix
    Int minMinJunctionReads
    Int minMinSumFrags
    Int minMinNovelJunctionSupport
    Int minMinSpanningFragsOnly
    String requireRequireLdas
    Int maxMaxPromiscuity
    Int minMinPctDomPromiscuity
    Int minMinPerId
    Boolean onlyOnlyFusionReads
    Boolean captureCaptureGenomeAlignments
    Boolean includeIncludeTrinity
    Boolean visVis
    Boolean writeWriteIntermediateResults
    Boolean cleanupCleanup
    String cpuCpu
    Boolean annotateAnnotate
    Boolean examineExamineCodingEffect
    String alignerAlignerPath
    Boolean fusionFusionContigsOnly
    String extractExtractFusionReadsFile
    Boolean noNoRemoveDups
    String farFarPseudoCount
    String starStarMaxMateDist
    Boolean noNoFfPm
  }
  command <<<
    FusionInspector \
      ~{if defined(fusionsFusions) then ("--fusions " +  '"' + fusionsFusions + '"') else ""} \
      ~{if defined(leftLeftFq) then ("--left_fq " +  '"' + leftLeftFq + '"') else ""} \
      ~{if defined(rightRightFq) then ("--right_fq " +  '"' + rightRightFq + '"') else ""} \
      ~{if defined(genomeGenomeLibDir) then ("--genome_lib_dir " +  '"' + genomeGenomeLibDir + '"') else ""} \
      ~{if defined(samplesSamplesFile) then ("--samples_file " +  '"' + samplesSamplesFile + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(outOutPrefix) then ("--out_prefix " +  '"' + outOutPrefix + '"') else ""} \
      ~{if defined(minMinJunctionReads) then ("--min_junction_reads " +  '"' + minMinJunctionReads + '"') else ""} \
      ~{if defined(minMinSumFrags) then ("--min_sum_frags " +  '"' + minMinSumFrags + '"') else ""} \
      ~{if defined(minMinNovelJunctionSupport) then ("--min_novel_junction_support " +  '"' + minMinNovelJunctionSupport + '"') else ""} \
      ~{if defined(minMinSpanningFragsOnly) then ("--min_spanning_frags_only " +  '"' + minMinSpanningFragsOnly + '"') else ""} \
      ~{if defined(requireRequireLdas) then ("--require_LDAS " +  '"' + requireRequireLdas + '"') else ""} \
      ~{if defined(maxMaxPromiscuity) then ("--max_promiscuity " +  '"' + maxMaxPromiscuity + '"') else ""} \
      ~{if defined(minMinPctDomPromiscuity) then ("--min_pct_dom_promiscuity " +  '"' + minMinPctDomPromiscuity + '"') else ""} \
      ~{if defined(minMinPerId) then ("--min_per_id " +  '"' + minMinPerId + '"') else ""} \
      ~{true="--only_fusion_reads" false="" onlyOnlyFusionReads} \
      ~{true="--capture_genome_alignments" false="" captureCaptureGenomeAlignments} \
      ~{true="--include_Trinity" false="" includeIncludeTrinity} \
      ~{true="--vis" false="" visVis} \
      ~{true="--write_intermediate_results" false="" writeWriteIntermediateResults} \
      ~{true="--cleanup" false="" cleanupCleanup} \
      ~{if defined(cpuCpu) then ("--CPU " +  '"' + cpuCpu + '"') else ""} \
      ~{true="--annotate" false="" annotateAnnotate} \
      ~{true="--examine_coding_effect" false="" examineExamineCodingEffect} \
      ~{if defined(alignerAlignerPath) then ("--aligner_path " +  '"' + alignerAlignerPath + '"') else ""} \
      ~{true="--fusion_contigs_only" false="" fusionFusionContigsOnly} \
      ~{if defined(extractExtractFusionReadsFile) then ("--extract_fusion_reads_file " +  '"' + extractExtractFusionReadsFile + '"') else ""} \
      ~{true="--no_remove_dups" false="" noNoRemoveDups} \
      ~{if defined(farFarPseudoCount) then ("--FAR_pseudocount " +  '"' + farFarPseudoCount + '"') else ""} \
      ~{if defined(starStarMaxMateDist) then ("--STAR_max_mate_dist " +  '"' + starStarMaxMateDist + '"') else ""} \
      ~{true="--no_FFPM" false="" noNoFfPm}
  >>>
}