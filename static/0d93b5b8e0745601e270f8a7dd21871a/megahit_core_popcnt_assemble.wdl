version 1.0

task MegahitCorePopcntAssemble {
  input {
    String sSDbgName
    String outputOutputPrefix
    String numNumCpuThreads
    String maxMaxTipLen
    String minMinStandalone
    String bubbleBubbleLevel
    String mergeMergeLen
    String mergeMergeSimilar
    String prunePruneLevel
    String disconnectDisconnectRatio
    String lowLowLocalRatio
    String cleaningCleaningRounds
    String minMinDepth
    Boolean isIsFinalRound
    Boolean outputOutputStandalone
    Boolean carefulCarefulBubble
    String? assembleAssemble
  }
  command <<<
    megahit_core_popcnt assemble \
      ~{assembleAssemble} \
      ~{if defined(sSDbgName) then ("--sdbg_name " +  '"' + sSDbgName + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output_prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(numNumCpuThreads) then ("--num_cpu_threads " +  '"' + numNumCpuThreads + '"') else ""} \
      ~{if defined(maxMaxTipLen) then ("--max_tip_len " +  '"' + maxMaxTipLen + '"') else ""} \
      ~{if defined(minMinStandalone) then ("--min_standalone " +  '"' + minMinStandalone + '"') else ""} \
      ~{if defined(bubbleBubbleLevel) then ("--bubble_level " +  '"' + bubbleBubbleLevel + '"') else ""} \
      ~{if defined(mergeMergeLen) then ("--merge_len " +  '"' + mergeMergeLen + '"') else ""} \
      ~{if defined(mergeMergeSimilar) then ("--merge_similar " +  '"' + mergeMergeSimilar + '"') else ""} \
      ~{if defined(prunePruneLevel) then ("--prune_level " +  '"' + prunePruneLevel + '"') else ""} \
      ~{if defined(disconnectDisconnectRatio) then ("--disconnect_ratio " +  '"' + disconnectDisconnectRatio + '"') else ""} \
      ~{if defined(lowLowLocalRatio) then ("--low_local_ratio " +  '"' + lowLowLocalRatio + '"') else ""} \
      ~{if defined(cleaningCleaningRounds) then ("--cleaning_rounds " +  '"' + cleaningCleaningRounds + '"') else ""} \
      ~{if defined(minMinDepth) then ("--min_depth " +  '"' + minMinDepth + '"') else ""} \
      ~{true="--is_final_round" false="" isIsFinalRound} \
      ~{true="--output_standalone" false="" outputOutputStandalone} \
      ~{true="--careful_bubble" false="" carefulCarefulBubble}
  >>>
}