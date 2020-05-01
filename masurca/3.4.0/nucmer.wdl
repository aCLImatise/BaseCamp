version 1.0

task Nucmer {
  input {
    Boolean mumMum
    Boolean maxMaxMatch
    String breakBreakLen
    String minMinCluster
    String diagDiagDiff
    String diagDiagFactor
    Boolean noNoExtend
    Boolean forwardForward
    String maxMaxGap
    String minMinMatch
    String minMinAlign
    Boolean noNoOptimize
    Boolean reverseReverse
    Boolean noNoSimplify
    String prefixPrefix
    File deltaDelta
    File samSamShort
    File samSamLong
    String saveSave
    String loadLoad
    String batchBatch
    String threadsThreads
    Boolean fullFullHelp
  }
  command <<<
    nucmer \
      ~{true="--mum" false="" mumMum} \
      ~{true="--maxmatch" false="" maxMaxMatch} \
      ~{if defined(breakBreakLen) then ("--breaklen " +  '"' + breakBreakLen + '"') else ""} \
      ~{if defined(minMinCluster) then ("--mincluster " +  '"' + minMinCluster + '"') else ""} \
      ~{if defined(diagDiagDiff) then ("--diagdiff " +  '"' + diagDiagDiff + '"') else ""} \
      ~{if defined(diagDiagFactor) then ("--diagfactor " +  '"' + diagDiagFactor + '"') else ""} \
      ~{true="--noextend" false="" noNoExtend} \
      ~{true="--forward" false="" forwardForward} \
      ~{if defined(maxMaxGap) then ("--maxgap " +  '"' + maxMaxGap + '"') else ""} \
      ~{if defined(minMinMatch) then ("--minmatch " +  '"' + minMinMatch + '"') else ""} \
      ~{if defined(minMinAlign) then ("--minalign " +  '"' + minMinAlign + '"') else ""} \
      ~{true="--nooptimize" false="" noNoOptimize} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{true="--nosimplify" false="" noNoSimplify} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(deltaDelta) then ("--delta " +  '"' + deltaDelta + '"') else ""} \
      ~{if defined(samSamShort) then ("--sam-short " +  '"' + samSamShort + '"') else ""} \
      ~{if defined(samSamLong) then ("--sam-long " +  '"' + samSamLong + '"') else ""} \
      ~{if defined(saveSave) then ("--save " +  '"' + saveSave + '"') else ""} \
      ~{if defined(loadLoad) then ("--load " +  '"' + loadLoad + '"') else ""} \
      ~{if defined(batchBatch) then ("--batch " +  '"' + batchBatch + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--full-help" false="" fullFullHelp}
  >>>
}