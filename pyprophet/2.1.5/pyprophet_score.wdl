version 1.0

task PyprophetScore {
  input {
    File inIn
    File outOut
    Boolean classifierClassifier
    Boolean xXGbAutotune
    File applyApplyWeights
    Float xXEvalFraction
    Int xXEvalNumIter
    Float ssSsInitialFdr
    Float ssSsIterationFdr
    Int ssSsNumIter
    String ssSsMainScore
    String groupGroupId
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
    Boolean levelLevel
    Int ipfIpfMaxPeakGroupRank
    Float ipfIpfMaxPeakGroupPep
    Float ipfIpfMaxTransitionIsotopeOverlap
    Float ipfIpfMinTransitionSn
    Boolean tricTricChromProb
    Int threadsThreads
    Boolean testTest
  }
  command <<<
    pyprophet score \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{true="--classifier" false="" classifierClassifier} \
      ~{true="--xgb_autotune" false="" xXGbAutotune} \
      ~{if defined(applyApplyWeights) then ("--apply_weights " +  '"' + applyApplyWeights + '"') else ""} \
      ~{if defined(xXEvalFraction) then ("--xeval_fraction " +  '"' + xXEvalFraction + '"') else ""} \
      ~{if defined(xXEvalNumIter) then ("--xeval_num_iter " +  '"' + xXEvalNumIter + '"') else ""} \
      ~{if defined(ssSsInitialFdr) then ("--ss_initial_fdr " +  '"' + ssSsInitialFdr + '"') else ""} \
      ~{if defined(ssSsIterationFdr) then ("--ss_iteration_fdr " +  '"' + ssSsIterationFdr + '"') else ""} \
      ~{if defined(ssSsNumIter) then ("--ss_num_iter " +  '"' + ssSsNumIter + '"') else ""} \
      ~{if defined(ssSsMainScore) then ("--ss_main_score " +  '"' + ssSsMainScore + '"') else ""} \
      ~{if defined(groupGroupId) then ("--group_id " +  '"' + groupGroupId + '"') else ""} \
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
      ~{if defined(lfLfDrEps) then ("--lfdr_eps " +  '"' + lfLfDrEps + '"') else ""} \
      ~{true="--level" false="" levelLevel} \
      ~{if defined(ipfIpfMaxPeakGroupRank) then ("--ipf_max_peakgroup_rank " +  '"' + ipfIpfMaxPeakGroupRank + '"') else ""} \
      ~{if defined(ipfIpfMaxPeakGroupPep) then ("--ipf_max_peakgroup_pep " +  '"' + ipfIpfMaxPeakGroupPep + '"') else ""} \
      ~{if defined(ipfIpfMaxTransitionIsotopeOverlap) then ("--ipf_max_transition_isotope_overlap " +  '"' + ipfIpfMaxTransitionIsotopeOverlap + '"') else ""} \
      ~{if defined(ipfIpfMinTransitionSn) then ("--ipf_min_transition_sn " +  '"' + ipfIpfMinTransitionSn + '"') else ""} \
      ~{true="--tric_chromprob" false="" tricTricChromProb} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--test" false="" testTest}
  >>>
}