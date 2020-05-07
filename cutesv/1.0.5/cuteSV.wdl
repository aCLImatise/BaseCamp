version 1.0

task CuteSV {
  input {
    Boolean maxMaxClusterBiasIns
    Boolean diffDiffRatioMergingIns
    Boolean diffDiffRatioFilteringIns
    Boolean diffDiffRatioFilteringDel
    Boolean maxMaxClusterBiasIns
    Boolean diffDiffRatioMergingIns
    Boolean diffDiffRatioFilteringIns
    Boolean diffDiffRatioFilteringDel
    String threadsThreads
    String batchesBatches
    String sampleSample
    Int maxMaxSplitParts
    Int minMinMapq
    Int minMinReadLen
    String mergeMergeDelThreshold
    String mergeMergeInsThreshold
    Int minMinSupport
    Int minMinSize
    Int maxMaxSize
    Int minMinSigLength
    Boolean genotypeGenotype
    String homHom
    String hetHet
    Int maxMaxClusterBiasIns
    String diffDiffRatioMergingIns
    String diffDiffRatioFilteringIns
    Int maxMaxClusterBiasDel
    String diffDiffRatioMergingDel
    String diffDiffRatioFilteringDel
    Int maxMaxClusterBiasInV
    Int maxMaxClusterBiasDup
    Int maxMaxClusterBiasTra
    String diffDiffRatioFilteringTra
    String? outputOutput
    String? workWorkDir
  }
  command <<<
    cuteSV \
      ~{outputOutput} \
      ~{true="--max_cluster_bias_INS" false="" maxMaxClusterBiasIns} \
      ~{true="--diff_ratio_merging_INS" false="" diffDiffRatioMergingIns} \
      ~{true="--diff_ratio_filtering_INS" false="" diffDiffRatioFilteringIns} \
      ~{true="--diff_ratio_filtering_DEL" false="" diffDiffRatioFilteringDel} \
      ~{true="--max_cluster_bias_INS" false="" maxMaxClusterBiasIns} \
      ~{true="--diff_ratio_merging_INS" false="" diffDiffRatioMergingIns} \
      ~{true="--diff_ratio_filtering_INS" false="" diffDiffRatioFilteringIns} \
      ~{true="--diff_ratio_filtering_DEL" false="" diffDiffRatioFilteringDel} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(batchesBatches) then ("--batches " +  '"' + batchesBatches + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{if defined(maxMaxSplitParts) then ("--max_split_parts " +  '"' + maxMaxSplitParts + '"') else ""} \
      ~{if defined(minMinMapq) then ("--min_mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{if defined(minMinReadLen) then ("--min_read_len " +  '"' + minMinReadLen + '"') else ""} \
      ~{if defined(mergeMergeDelThreshold) then ("--merge_del_threshold " +  '"' + mergeMergeDelThreshold + '"') else ""} \
      ~{if defined(mergeMergeInsThreshold) then ("--merge_ins_threshold " +  '"' + mergeMergeInsThreshold + '"') else ""} \
      ~{if defined(minMinSupport) then ("--min_support " +  '"' + minMinSupport + '"') else ""} \
      ~{if defined(minMinSize) then ("--min_size " +  '"' + minMinSize + '"') else ""} \
      ~{if defined(maxMaxSize) then ("--max_size " +  '"' + maxMaxSize + '"') else ""} \
      ~{if defined(minMinSigLength) then ("--min_siglength " +  '"' + minMinSigLength + '"') else ""} \
      ~{true="--genotype" false="" genotypeGenotype} \
      ~{if defined(homHom) then ("--hom " +  '"' + homHom + '"') else ""} \
      ~{if defined(hetHet) then ("--het " +  '"' + hetHet + '"') else ""} \
      ~{if defined(maxMaxClusterBiasIns) then ("--max_cluster_bias_INS " +  '"' + maxMaxClusterBiasIns + '"') else ""} \
      ~{if defined(diffDiffRatioMergingIns) then ("--diff_ratio_merging_INS " +  '"' + diffDiffRatioMergingIns + '"') else ""} \
      ~{if defined(diffDiffRatioFilteringIns) then ("--diff_ratio_filtering_INS " +  '"' + diffDiffRatioFilteringIns + '"') else ""} \
      ~{if defined(maxMaxClusterBiasDel) then ("--max_cluster_bias_DEL " +  '"' + maxMaxClusterBiasDel + '"') else ""} \
      ~{if defined(diffDiffRatioMergingDel) then ("--diff_ratio_merging_DEL " +  '"' + diffDiffRatioMergingDel + '"') else ""} \
      ~{if defined(diffDiffRatioFilteringDel) then ("--diff_ratio_filtering_DEL " +  '"' + diffDiffRatioFilteringDel + '"') else ""} \
      ~{if defined(maxMaxClusterBiasInV) then ("--max_cluster_bias_INV " +  '"' + maxMaxClusterBiasInV + '"') else ""} \
      ~{if defined(maxMaxClusterBiasDup) then ("--max_cluster_bias_DUP " +  '"' + maxMaxClusterBiasDup + '"') else ""} \
      ~{if defined(maxMaxClusterBiasTra) then ("--max_cluster_bias_TRA " +  '"' + maxMaxClusterBiasTra + '"') else ""} \
      ~{if defined(diffDiffRatioFilteringTra) then ("--diff_ratio_filtering_TRA " +  '"' + diffDiffRatioFilteringTra + '"') else ""} \
      ~{workWorkDir}
  >>>
}