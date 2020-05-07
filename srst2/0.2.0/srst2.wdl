version 1.0

task Srst2 {
  input {
    Array[String]+ inputInputSe
    Array[String]+ inputInputPe
    Boolean mergeMergePaired
    String forwardForward
    String reverseReverse
    String readReadType
    String mlstMlstDb
    String mlstMlstDelimiter
    String mlstMlstDefinitions
    String mlstMlstMaxMismatch
    Array[String]+ geneGeneDb
    Boolean noNoGeneDetails
    String geneGeneMaxMismatch
    Int minMinCoverage
    Int maxMaxDivergence
    Int minMinDepth
    Int minMinEdgeDepth
    String probProbErr
    String truncationTruncationScoreTolerance
    String stopStopAfter
    String otherOther
    Int maxMaxUnalignedOverlap
    String mapqMapq
    String baseBaseQ
    String samSamToolsArgs
    String outputOutput
    Boolean logLog
    Boolean saveSaveScores
    Boolean reportReportNewConsensus
    Boolean reportReportAllConsensus
    Boolean useUseExistingBowtie2Sam
    Boolean useUseExistingPileUp
    Boolean useUseExistingScores
    Boolean keepKeepInterimAlignment
    String threadsThreads
    Array[String]+ prevPrevOutput
  }
  command <<<
    srst2 \
      ~{if defined(inputInputSe) then ("--input_se " +  '"' + inputInputSe + '"') else ""} \
      ~{if defined(inputInputPe) then ("--input_pe " +  '"' + inputInputPe + '"') else ""} \
      ~{true="--merge_paired" false="" mergeMergePaired} \
      ~{if defined(forwardForward) then ("--forward " +  '"' + forwardForward + '"') else ""} \
      ~{if defined(reverseReverse) then ("--reverse " +  '"' + reverseReverse + '"') else ""} \
      ~{if defined(readReadType) then ("--read_type " +  '"' + readReadType + '"') else ""} \
      ~{if defined(mlstMlstDb) then ("--mlst_db " +  '"' + mlstMlstDb + '"') else ""} \
      ~{if defined(mlstMlstDelimiter) then ("--mlst_delimiter " +  '"' + mlstMlstDelimiter + '"') else ""} \
      ~{if defined(mlstMlstDefinitions) then ("--mlst_definitions " +  '"' + mlstMlstDefinitions + '"') else ""} \
      ~{if defined(mlstMlstMaxMismatch) then ("--mlst_max_mismatch " +  '"' + mlstMlstMaxMismatch + '"') else ""} \
      ~{if defined(geneGeneDb) then ("--gene_db " +  '"' + geneGeneDb + '"') else ""} \
      ~{true="--no_gene_details" false="" noNoGeneDetails} \
      ~{if defined(geneGeneMaxMismatch) then ("--gene_max_mismatch " +  '"' + geneGeneMaxMismatch + '"') else ""} \
      ~{if defined(minMinCoverage) then ("--min_coverage " +  '"' + minMinCoverage + '"') else ""} \
      ~{if defined(maxMaxDivergence) then ("--max_divergence " +  '"' + maxMaxDivergence + '"') else ""} \
      ~{if defined(minMinDepth) then ("--min_depth " +  '"' + minMinDepth + '"') else ""} \
      ~{if defined(minMinEdgeDepth) then ("--min_edge_depth " +  '"' + minMinEdgeDepth + '"') else ""} \
      ~{if defined(probProbErr) then ("--prob_err " +  '"' + probProbErr + '"') else ""} \
      ~{if defined(truncationTruncationScoreTolerance) then ("--truncation_score_tolerance " +  '"' + truncationTruncationScoreTolerance + '"') else ""} \
      ~{if defined(stopStopAfter) then ("--stop_after " +  '"' + stopStopAfter + '"') else ""} \
      ~{if defined(otherOther) then ("--other " +  '"' + otherOther + '"') else ""} \
      ~{if defined(maxMaxUnalignedOverlap) then ("--max_unaligned_overlap " +  '"' + maxMaxUnalignedOverlap + '"') else ""} \
      ~{if defined(mapqMapq) then ("--mapq " +  '"' + mapqMapq + '"') else ""} \
      ~{if defined(baseBaseQ) then ("--baseq " +  '"' + baseBaseQ + '"') else ""} \
      ~{if defined(samSamToolsArgs) then ("--samtools_args " +  '"' + samSamToolsArgs + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--log" false="" logLog} \
      ~{true="--save_scores" false="" saveSaveScores} \
      ~{true="--report_new_consensus" false="" reportReportNewConsensus} \
      ~{true="--report_all_consensus" false="" reportReportAllConsensus} \
      ~{true="--use_existing_bowtie2_sam" false="" useUseExistingBowtie2Sam} \
      ~{true="--use_existing_pileup" false="" useUseExistingPileUp} \
      ~{true="--use_existing_scores" false="" useUseExistingScores} \
      ~{true="--keep_interim_alignment" false="" keepKeepInterimAlignment} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(prevPrevOutput) then ("--prev_output " +  '"' + prevPrevOutput + '"') else ""}
  >>>
}