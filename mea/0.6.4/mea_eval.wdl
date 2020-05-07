version 1.0

task MeaEval {
  input {
    String alphaAlpha
    String betaBeta
    String gammaGamma
    String deltaDelta
    String dpDpDir
    String predPred
    Int startStart
    Int stopStop
    Boolean noNoSlideRule
    Boolean noNoConflictRule
    Boolean verboseVerbose
  }
  command <<<
    mea_eval \
      ~{if defined(alphaAlpha) then ("--alpha " +  '"' + alphaAlpha + '"') else ""} \
      ~{if defined(betaBeta) then ("--beta " +  '"' + betaBeta + '"') else ""} \
      ~{if defined(gammaGamma) then ("--gamma " +  '"' + gammaGamma + '"') else ""} \
      ~{if defined(deltaDelta) then ("--delta " +  '"' + deltaDelta + '"') else ""} \
      ~{if defined(dpDpDir) then ("--dpdir " +  '"' + dpDpDir + '"') else ""} \
      ~{if defined(predPred) then ("--pred " +  '"' + predPred + '"') else ""} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(stopStop) then ("--stop " +  '"' + stopStop + '"') else ""} \
      ~{true="--no-slide-rule" false="" noNoSlideRule} \
      ~{true="--no-conflict-rule" false="" noNoConflictRule} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}