version 1.0

task Savage {
  input {
    String sS
    String p1P1
    String p2P2
    Int minMinOverlapLen
    String numNumThreads
    String splitSplit
    Boolean revRevComp
    String outdirOutdir
    String refRef
    Boolean noNoStageA
    Boolean noNoStageB
    Boolean noNoStageC
    Boolean noNoOverlaps
    Boolean noNoPreprocessing
    Boolean noNoAssembly
    Boolean countCountStrains
    Boolean ignoreIgnoreSubReads
    String mergeMergeContigs
    Int minMinCliqueSize
    String overlapOverlapLenStageC
    String contigContigLenStageC
    Boolean keepKeepBranches
    String sfoSfoMm
    Boolean diploidDiploid
    String diploidDiploidContigLen
    String diploidDiploidOverlapLen
    String averageAverageReadLen
    Boolean noNoFiltering
    Int maxMaxTipLen
  }
  command <<<
    savage \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(p1P1) then ("-p1 " +  '"' + p1P1 + '"') else ""} \
      ~{if defined(p2P2) then ("-p2 " +  '"' + p2P2 + '"') else ""} \
      ~{if defined(minMinOverlapLen) then ("--min_overlap_len " +  '"' + minMinOverlapLen + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num_threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(splitSplit) then ("--split " +  '"' + splitSplit + '"') else ""} \
      ~{true="--revcomp" false="" revRevComp} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{true="--no_stage_a" false="" noNoStageA} \
      ~{true="--no_stage_b" false="" noNoStageB} \
      ~{true="--no_stage_c" false="" noNoStageC} \
      ~{true="--no_overlaps" false="" noNoOverlaps} \
      ~{true="--no_preprocessing" false="" noNoPreprocessing} \
      ~{true="--no_assembly" false="" noNoAssembly} \
      ~{true="--count_strains" false="" countCountStrains} \
      ~{true="--ignore_subreads" false="" ignoreIgnoreSubReads} \
      ~{if defined(mergeMergeContigs) then ("--merge_contigs " +  '"' + mergeMergeContigs + '"') else ""} \
      ~{if defined(minMinCliqueSize) then ("--min_clique_size " +  '"' + minMinCliqueSize + '"') else ""} \
      ~{if defined(overlapOverlapLenStageC) then ("--overlap_len_stage_c " +  '"' + overlapOverlapLenStageC + '"') else ""} \
      ~{if defined(contigContigLenStageC) then ("--contig_len_stage_c " +  '"' + contigContigLenStageC + '"') else ""} \
      ~{true="--keep_branches" false="" keepKeepBranches} \
      ~{if defined(sfoSfoMm) then ("--sfo_mm " +  '"' + sfoSfoMm + '"') else ""} \
      ~{true="--diploid" false="" diploidDiploid} \
      ~{if defined(diploidDiploidContigLen) then ("--diploid_contig_len " +  '"' + diploidDiploidContigLen + '"') else ""} \
      ~{if defined(diploidDiploidOverlapLen) then ("--diploid_overlap_len " +  '"' + diploidDiploidOverlapLen + '"') else ""} \
      ~{if defined(averageAverageReadLen) then ("--average_read_len " +  '"' + averageAverageReadLen + '"') else ""} \
      ~{true="--no_filtering" false="" noNoFiltering} \
      ~{if defined(maxMaxTipLen) then ("--max_tip_len " +  '"' + maxMaxTipLen + '"') else ""}
  >>>
}