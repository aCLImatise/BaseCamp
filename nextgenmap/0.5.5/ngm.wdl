version 1.0

task Ngm {
  input {
    Boolean pP
    Boolean iI
    Boolean xX
    Int maxMaxReadLength
    Boolean forceForceRLengthCheck
    Boolean oO
    Boolean nN
    Boolean strataStrata
    Boolean bB
    Boolean keepKeepTags
    Boolean noNoUnal
    Boolean hardHardClip
    Boolean silentSilentClip
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
    Boolean dD
    Boolean tT
    Boolean sS
    Boolean veryVeryFast
    Boolean fastFast
    Boolean sensitiveSensitive
    Boolean veryVerySensitive
    Boolean iI
    Boolean rR
    Boolean qQ
    Boolean gG
    Boolean bsBsMapping
    Int bsBsCutOff
    Boolean kK
    Int kmKmErSkip
    Int kmKmErMin
    Int maxMaxCmrs
    Boolean skipSkipSave
    Boolean lL
    Boolean eE
    Boolean affineAffine
    Boolean cC
    Boolean fastFastPairing
    Boolean pairPairScoreCutOff
    Boolean skipSkipMateCheck
    Int matchMatchBonus
    String mismatchMismatch
    Int gapGapReadPenalty
    Int gapGapRefPenalty
    Int gapGapExtendPenalty
    Int matchMatchBonusTt
    Int matchMatchBonusTc
    String binBinSize
    Boolean updateUpdateCheck
    Boolean colorColor
    Boolean noNoProgress
  }
  command <<<
    ngm \
      ~{true="-p" false="" pP} \
      ~{true="-I" false="" iI} \
      ~{true="-X" false="" xX} \
      ~{if defined(maxMaxReadLength) then ("--max-read-length " +  '"' + maxMaxReadLength + '"') else ""} \
      ~{true="--force-rlength-check" false="" forceForceRLengthCheck} \
      ~{true="-o" false="" oO} \
      ~{true="-n" false="" nN} \
      ~{true="--strata" false="" strataStrata} \
      ~{true="-b" false="" bB} \
      ~{true="--keep-tags" false="" keepKeepTags} \
      ~{true="--no-unal" false="" noNoUnal} \
      ~{true="--hard-clip" false="" hardHardClip} \
      ~{true="--silent-clip" false="" silentSilentClip} \
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
      ~{true="-d" false="" dD} \
      ~{true="-t" false="" tT} \
      ~{true="-s" false="" sS} \
      ~{true="--very-fast" false="" veryVeryFast} \
      ~{true="--fast" false="" fastFast} \
      ~{true="--sensitive" false="" sensitiveSensitive} \
      ~{true="--very-sensitive" false="" veryVerySensitive} \
      ~{true="-i" false="" iI} \
      ~{true="-R" false="" rR} \
      ~{true="-Q" false="" qQ} \
      ~{true="-g" false="" gG} \
      ~{true="--bs-mapping" false="" bsBsMapping} \
      ~{if defined(bsBsCutOff) then ("--bs-cutoff " +  '"' + bsBsCutOff + '"') else ""} \
      ~{true="-k" false="" kK} \
      ~{if defined(kmKmErSkip) then ("--kmer-skip " +  '"' + kmKmErSkip + '"') else ""} \
      ~{if defined(kmKmErMin) then ("--kmer-min " +  '"' + kmKmErMin + '"') else ""} \
      ~{if defined(maxMaxCmrs) then ("--max-cmrs " +  '"' + maxMaxCmrs + '"') else ""} \
      ~{true="--skip-save" false="" skipSkipSave} \
      ~{true="-l" false="" lL} \
      ~{true="-e" false="" eE} \
      ~{true="--affine" false="" affineAffine} \
      ~{true="-C" false="" cC} \
      ~{true="--fast-pairing" false="" fastFastPairing} \
      ~{true="--pair-score-cutoff" false="" pairPairScoreCutOff} \
      ~{true="--skip-mate-check" false="" skipSkipMateCheck} \
      ~{if defined(matchMatchBonus) then ("--match-bonus " +  '"' + matchMatchBonus + '"') else ""} \
      ~{if defined(mismatchMismatch) then ("--mismatch " +  '"' + mismatchMismatch + '"') else ""} \
      ~{if defined(gapGapReadPenalty) then ("--gap-read-penalty " +  '"' + gapGapReadPenalty + '"') else ""} \
      ~{if defined(gapGapRefPenalty) then ("--gap-ref-penalty " +  '"' + gapGapRefPenalty + '"') else ""} \
      ~{if defined(gapGapExtendPenalty) then ("--gap-extend-penalty " +  '"' + gapGapExtendPenalty + '"') else ""} \
      ~{if defined(matchMatchBonusTt) then ("--match-bonus-tt " +  '"' + matchMatchBonusTt + '"') else ""} \
      ~{if defined(matchMatchBonusTc) then ("--match-bonus-tc " +  '"' + matchMatchBonusTc + '"') else ""} \
      ~{if defined(binBinSize) then ("--bin-size " +  '"' + binBinSize + '"') else ""} \
      ~{true="--update-check" false="" updateUpdateCheck} \
      ~{true="--color" false="" colorColor} \
      ~{true="--no-progress" false="" noNoProgress}
  >>>
}