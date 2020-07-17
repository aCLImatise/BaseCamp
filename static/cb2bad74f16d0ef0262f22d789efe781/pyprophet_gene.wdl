version 1.0

task PyprophetGene {
  input {
    File? in
    File? out
    Boolean? context
    Boolean? parametric
    Boolean? pf_dr
    Float? pi_zero_lambda
    Boolean? pi_zero_method
    Int? pi_zero_smooth_df
    Boolean? pi_zero_smooth_log_pi_zero
    Boolean? lf_dr_truncate
    Boolean? lf_dr_monotone
    Boolean? lf_dr_transformation
    Float? lf_dr_adj
    Float? lf_dr_eps
  }
  command <<<
    pyprophet gene \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{true="--context" false="" context} \
      ~{true="--parametric" false="" parametric} \
      ~{true="--pfdr" false="" pf_dr} \
      ~{if defined(pi_zero_lambda) then ("--pi0_lambda " +  '"' + pi_zero_lambda + '"') else ""} \
      ~{true="--pi0_method" false="" pi_zero_method} \
      ~{if defined(pi_zero_smooth_df) then ("--pi0_smooth_df " +  '"' + pi_zero_smooth_df + '"') else ""} \
      ~{true="--pi0_smooth_log_pi0" false="" pi_zero_smooth_log_pi_zero} \
      ~{true="--lfdr_truncate" false="" lf_dr_truncate} \
      ~{true="--lfdr_monotone" false="" lf_dr_monotone} \
      ~{true="--lfdr_transformation" false="" lf_dr_transformation} \
      ~{if defined(lf_dr_adj) then ("--lfdr_adj " +  '"' + lf_dr_adj + '"') else ""} \
      ~{if defined(lf_dr_eps) then ("--lfdr_eps " +  '"' + lf_dr_eps + '"') else ""}
  >>>
  parameter_meta {
    in: "PyProphet input file.  [required]"
    out: "PyProphet output file."
    context: "[run-specific|experiment-wide|global] Context to estimate gene-level FDR control. [default: run-specific]"
    parametric: "/ --no-parametric  Do parametric estimation of p-values. [default: False]"
    pf_dr: "/ --no-pfdr              Compute positive false discovery rate (pFDR) instead of FDR.  [default: False]"
    pi_zero_lambda: "... Use non-parametric estimation of p-values. Either use <START END STEPS>, e.g. 0.1, 1.0, 0.1 or set to fixed value, e.g. 0.4, 0, 0. [default: 0.1, 0.5, 0.05]"
    pi_zero_method: "[smoother|bootstrap] Either \"smoother\" or \"bootstrap\"; the method for automatically choosing tuning parameter in the estimation of pi_0, the proportion of true null hypotheses.  [default: bootstrap]"
    pi_zero_smooth_df: "Number of degrees-of-freedom to use when estimating pi_0 with a smoother.  [default: 3]"
    pi_zero_smooth_log_pi_zero: "/ --no-pi0_smooth_log_pi0 If True and pi0_method = \"smoother\", pi0 will be estimated by applying a smoother to a scatterplot of log(pi0) estimates against the tuning parameter lambda.  [default: False]"
    lf_dr_truncate: "/ --no-lfdr_truncate If True, local FDR values >1 are set to 1. [default: True]"
    lf_dr_monotone: "/ --no-lfdr_monotone If True, local FDR values are non-decreasing with increasing p-values.  [default: True]"
    lf_dr_transformation: "[probit|logit] Either a \"probit\" or \"logit\" transformation is applied to the p-values so that a local FDR estimate can be formed that does not involve edge effects of the [0,1] interval in which the p-values lie.  [default: probit]"
    lf_dr_adj: "Numeric value that is applied as a multiple of the smoothing bandwidth used in the density estimation.  [default: 1.5]"
    lf_dr_eps: "Numeric value that is threshold for the tails of the empirical p-value distribution. [default: 1e-08]"
  }
}