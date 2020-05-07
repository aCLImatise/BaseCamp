version 1.0

task Ngmlr {
  input {
    Boolean skipSkipWrite
    Boolean bamBamFix
    String rgRgId
    String rgRgSm
    String rgRgLb
    String rgRgPl
    String rgRgDs
    String rgRgDt
    String rgRgPu
    String rgRgPi
    String rgRgPg
    String rgRgCn
    String rgRgFo
    String rgRgKs
    Boolean xX
    Boolean iI
    Boolean rR
    Boolean noNoSmallInv
    Boolean noNoLowQualitySplit
    Boolean verboseVerbose
    Boolean noNoProgress
    Float matchMatch
    Float mismatchMismatch
    Float gapGapOpen
    Float gapGapExtendMax
    Float gapGapExtendMin
    Float gapGapDecay
    Boolean kK
    Int kmKmErSkip
    Int binBinSize
    Int maxMaxSegments
    Int subSubReadLength
    Int subSubReadCorridor
  }
  command <<<
    ngmlr \
      ~{true="--skip-write" false="" skipSkipWrite} \
      ~{true="--bam-fix" false="" bamBamFix} \
      ~{if defined(rgRgId) then ("--rg-id " +  '"' + rgRgId + '"') else ""} \
      ~{if defined(rgRgSm) then ("--rg-sm " +  '"' + rgRgSm + '"') else ""} \
      ~{if defined(rgRgLb) then ("--rg-lb " +  '"' + rgRgLb + '"') else ""} \
      ~{if defined(rgRgPl) then ("--rg-pl " +  '"' + rgRgPl + '"') else ""} \
      ~{if defined(rgRgDs) then ("--rg-ds " +  '"' + rgRgDs + '"') else ""} \
      ~{if defined(rgRgDt) then ("--rg-dt " +  '"' + rgRgDt + '"') else ""} \
      ~{if defined(rgRgPu) then ("--rg-pu " +  '"' + rgRgPu + '"') else ""} \
      ~{if defined(rgRgPi) then ("--rg-pi " +  '"' + rgRgPi + '"') else ""} \
      ~{if defined(rgRgPg) then ("--rg-pg " +  '"' + rgRgPg + '"') else ""} \
      ~{if defined(rgRgCn) then ("--rg-cn " +  '"' + rgRgCn + '"') else ""} \
      ~{if defined(rgRgFo) then ("--rg-fo " +  '"' + rgRgFo + '"') else ""} \
      ~{if defined(rgRgKs) then ("--rg-ks " +  '"' + rgRgKs + '"') else ""} \
      ~{true="-x" false="" xX} \
      ~{true="-i" false="" iI} \
      ~{true="-R" false="" rR} \
      ~{true="--no-smallinv" false="" noNoSmallInv} \
      ~{true="--no-lowqualitysplit" false="" noNoLowQualitySplit} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--no-progress" false="" noNoProgress} \
      ~{if defined(matchMatch) then ("--match " +  '"' + matchMatch + '"') else ""} \
      ~{if defined(mismatchMismatch) then ("--mismatch " +  '"' + mismatchMismatch + '"') else ""} \
      ~{if defined(gapGapOpen) then ("--gap-open " +  '"' + gapGapOpen + '"') else ""} \
      ~{if defined(gapGapExtendMax) then ("--gap-extend-max " +  '"' + gapGapExtendMax + '"') else ""} \
      ~{if defined(gapGapExtendMin) then ("--gap-extend-min " +  '"' + gapGapExtendMin + '"') else ""} \
      ~{if defined(gapGapDecay) then ("--gap-decay " +  '"' + gapGapDecay + '"') else ""} \
      ~{true="-k" false="" kK} \
      ~{if defined(kmKmErSkip) then ("--kmer-skip " +  '"' + kmKmErSkip + '"') else ""} \
      ~{if defined(binBinSize) then ("--bin-size " +  '"' + binBinSize + '"') else ""} \
      ~{if defined(maxMaxSegments) then ("--max-segments " +  '"' + maxMaxSegments + '"') else ""} \
      ~{if defined(subSubReadLength) then ("--subread-length " +  '"' + subSubReadLength + '"') else ""} \
      ~{if defined(subSubReadCorridor) then ("--subread-corridor " +  '"' + subSubReadCorridor + '"') else ""}
  >>>
}