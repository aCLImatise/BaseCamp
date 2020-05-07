version 1.0

task Shapeit4 {
  input {
    String seedSeed
    Boolean tT
    Boolean iI
    Boolean hH
    Boolean sS
    Boolean mM
    Boolean rR
    String useUsePs
    Boolean sequencingSequencing
    String mcmcMcmcIterations
    String mcmcMcmcPrune
    String pbPbWtModulo
    String pbPbWtDepth
    String pbPbWtMac
    String pbPbWtMdr
    String ibd2Ibd2Length
    String ibd2Ibd2Maf
    String ibd2Ibd2Mdr
    String ibd2Ibd2Count
    String ibd2Ibd2Output
    Boolean wW
    String effectiveEffectiveSize
    Boolean oO
    String logLog
  }
  command <<<
    shapeit4 \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="-T" false="" tT} \
      ~{true="-I" false="" iI} \
      ~{true="-H" false="" hH} \
      ~{true="-S" false="" sS} \
      ~{true="-M" false="" mM} \
      ~{true="-R" false="" rR} \
      ~{if defined(useUsePs) then ("--use-PS " +  '"' + useUsePs + '"') else ""} \
      ~{true="--sequencing" false="" sequencingSequencing} \
      ~{if defined(mcmcMcmcIterations) then ("--mcmc-iterations " +  '"' + mcmcMcmcIterations + '"') else ""} \
      ~{if defined(mcmcMcmcPrune) then ("--mcmc-prune " +  '"' + mcmcMcmcPrune + '"') else ""} \
      ~{if defined(pbPbWtModulo) then ("--pbwt-modulo " +  '"' + pbPbWtModulo + '"') else ""} \
      ~{if defined(pbPbWtDepth) then ("--pbwt-depth " +  '"' + pbPbWtDepth + '"') else ""} \
      ~{if defined(pbPbWtMac) then ("--pbwt-mac " +  '"' + pbPbWtMac + '"') else ""} \
      ~{if defined(pbPbWtMdr) then ("--pbwt-mdr " +  '"' + pbPbWtMdr + '"') else ""} \
      ~{if defined(ibd2Ibd2Length) then ("--ibd2-length " +  '"' + ibd2Ibd2Length + '"') else ""} \
      ~{if defined(ibd2Ibd2Maf) then ("--ibd2-maf " +  '"' + ibd2Ibd2Maf + '"') else ""} \
      ~{if defined(ibd2Ibd2Mdr) then ("--ibd2-mdr " +  '"' + ibd2Ibd2Mdr + '"') else ""} \
      ~{if defined(ibd2Ibd2Count) then ("--ibd2-count " +  '"' + ibd2Ibd2Count + '"') else ""} \
      ~{if defined(ibd2Ibd2Output) then ("--ibd2-output " +  '"' + ibd2Ibd2Output + '"') else ""} \
      ~{true="-W" false="" wW} \
      ~{if defined(effectiveEffectiveSize) then ("--effective-size " +  '"' + effectiveEffectiveSize + '"') else ""} \
      ~{true="-O" false="" oO} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""}
  >>>
}