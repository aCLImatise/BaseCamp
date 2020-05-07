version 1.0

task PyprophetGene {
  input {
    File inIn
    File outOut
    Boolean contextContext
    Boolean parametricParametric
    Boolean pfPfDr
    Float pi0Pi0Lambda
    Boolean pi0Pi0Method
    Int pi0Pi0SmoothDf
    Boolean pi0Pi0SmoothLogPi0
    Boolean lfLfDrTruncate
    Boolean lfLfDrMonotone
    Boolean lfLfDrTransformation
    Float lfLfDrAdj
    Float lfLfDrEps
  }
  command <<<
    pyprophet gene \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{true="--context" false="" contextContext} \
      ~{true="--parametric" false="" parametricParametric} \
      ~{true="--pfdr" false="" pfPfDr} \
      ~{if defined(pi0Pi0Lambda) then ("--pi0_lambda " +  '"' + pi0Pi0Lambda + '"') else ""} \
      ~{true="--pi0_method" false="" pi0Pi0Method} \
      ~{if defined(pi0Pi0SmoothDf) then ("--pi0_smooth_df " +  '"' + pi0Pi0SmoothDf + '"') else ""} \
      ~{true="--pi0_smooth_log_pi0" false="" pi0Pi0SmoothLogPi0} \
      ~{true="--lfdr_truncate" false="" lfLfDrTruncate} \
      ~{true="--lfdr_monotone" false="" lfLfDrMonotone} \
      ~{true="--lfdr_transformation" false="" lfLfDrTransformation} \
      ~{if defined(lfLfDrAdj) then ("--lfdr_adj " +  '"' + lfLfDrAdj + '"') else ""} \
      ~{if defined(lfLfDrEps) then ("--lfdr_eps " +  '"' + lfLfDrEps + '"') else ""}
  >>>
}