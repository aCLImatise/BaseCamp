version 1.0

task Centrimo {
  input {
    String oO
    String ocOc
    String negNeg
    String xXAlph
    String bBFile
    String motifMotifPseudo
    String incInc
    String excExc
    Int seqSeqLen
    String scoreScore
    Boolean useUseLoFraction
    Boolean useUsePValues
    Boolean norcNorc
    Boolean sepSep
    Boolean flipFlip
    Boolean optimizeOptimizeScore
    Int maxMaxReg
    Int minMinReg
    Boolean localLocal
    Boolean cdCd
    String eEThresh
    String descDesc
    String dDFile
    Boolean noNoSeq
    Boolean verbosityVerbosity
  }
  command <<<
    centrimo \
      ~{if defined(oO) then ("--o " +  '"' + oO + '"') else ""} \
      ~{if defined(ocOc) then ("--oc " +  '"' + ocOc + '"') else ""} \
      ~{if defined(negNeg) then ("--neg " +  '"' + negNeg + '"') else ""} \
      ~{if defined(xXAlph) then ("--xalph " +  '"' + xXAlph + '"') else ""} \
      ~{if defined(bBFile) then ("--bfile " +  '"' + bBFile + '"') else ""} \
      ~{if defined(motifMotifPseudo) then ("--motif-pseudo " +  '"' + motifMotifPseudo + '"') else ""} \
      ~{if defined(incInc) then ("--inc " +  '"' + incInc + '"') else ""} \
      ~{if defined(excExc) then ("--exc " +  '"' + excExc + '"') else ""} \
      ~{if defined(seqSeqLen) then ("--seqlen " +  '"' + seqSeqLen + '"') else ""} \
      ~{if defined(scoreScore) then ("--score " +  '"' + scoreScore + '"') else ""} \
      ~{true="--use-lo-fraction" false="" useUseLoFraction} \
      ~{true="--use-pvalues" false="" useUsePValues} \
      ~{true="--norc" false="" norcNorc} \
      ~{true="--sep" false="" sepSep} \
      ~{true="--flip" false="" flipFlip} \
      ~{true="--optimize-score" false="" optimizeOptimizeScore} \
      ~{if defined(maxMaxReg) then ("--maxreg " +  '"' + maxMaxReg + '"') else ""} \
      ~{if defined(minMinReg) then ("--minreg " +  '"' + minMinReg + '"') else ""} \
      ~{true="--local" false="" localLocal} \
      ~{true="--cd" false="" cdCd} \
      ~{if defined(eEThresh) then ("--ethresh " +  '"' + eEThresh + '"') else ""} \
      ~{if defined(descDesc) then ("--desc " +  '"' + descDesc + '"') else ""} \
      ~{if defined(dDFile) then ("--dfile " +  '"' + dDFile + '"') else ""} \
      ~{true="--noseq" false="" noNoSeq} \
      ~{true="--verbosity" false="" verbosityVerbosity}
  >>>
}