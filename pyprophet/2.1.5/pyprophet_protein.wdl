version 1.0

task PyprophetProtein {
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
    pyprophet protein \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (context) then "--context" else ""} \
      ~{if (parametric) then "--parametric" else ""} \
      ~{if (pf_dr) then "--pfdr" else ""} \
      ~{if defined(pi_zero_lambda) then ("--pi0_lambda " +  '"' + pi_zero_lambda + '"') else ""} \
      ~{if (pi_zero_method) then "--pi0_method" else ""} \
      ~{if defined(pi_zero_smooth_df) then ("--pi0_smooth_df " +  '"' + pi_zero_smooth_df + '"') else ""} \
      ~{if (pi_zero_smooth_log_pi_zero) then "--pi0_smooth_log_pi0" else ""} \
      ~{if (lf_dr_truncate) then "--lfdr_truncate" else ""} \
      ~{if (lf_dr_monotone) then "--lfdr_monotone" else ""} \
      ~{if (lf_dr_transformation) then "--lfdr_transformation" else ""} \
      ~{if defined(lf_dr_adj) then ("--lfdr_adj " +  '"' + lf_dr_adj + '"') else ""} \
      ~{if defined(lf_dr_eps) then ("--lfdr_eps " +  '"' + lf_dr_eps + '"') else ""}
  >>>
  parameter_meta {
    in: "PyProphet input file.  [required]"
    out: "PyProphet output file."
    context: "[run-specific|experiment-wide|global]\\nContext to estimate protein-level FDR\\ncontrol.  [default: run-specific]"
    parametric: "/ --no-parametric  Do parametric estimation of p-values.\\n[default: False]"
    pf_dr: "/ --no-pfdr              Compute positive false discovery rate (pFDR)\\ninstead of FDR.  [default: False]"
    pi_zero_lambda: "...\\nUse non-parametric estimation of p-values.\\nEither use <START END STEPS>, e.g. 0.1, 1.0,\\n0.1 or set to fixed value, e.g. 0.4, 0, 0.\\n[default: 0.1, 0.5, 0.05]"
    pi_zero_method: "[smoother|bootstrap]\\nEither \\\"smoother\\\" or \\\"bootstrap\\\"; the method\\nfor automatically choosing tuning parameter\\nin the estimation of pi_0, the proportion of\\ntrue null hypotheses.  [default: bootstrap]"
    pi_zero_smooth_df: "Number of degrees-of-freedom to use when\\nestimating pi_0 with a smoother.  [default:\\n3]"
    pi_zero_smooth_log_pi_zero: "/ --no-pi0_smooth_log_pi0\\nIf True and pi0_method = \\\"smoother\\\", pi0\\nwill be estimated by applying a smoother to\\na scatterplot of log(pi0) estimates against\\nthe tuning parameter lambda.  [default:\\nFalse]"
    lf_dr_truncate: "/ --no-lfdr_truncate\\nIf True, local FDR values >1 are set to 1.\\n[default: True]"
    lf_dr_monotone: "/ --no-lfdr_monotone\\nIf True, local FDR values are non-decreasing\\nwith increasing p-values.  [default: True]"
    lf_dr_transformation: "[probit|logit]\\nEither a \\\"probit\\\" or \\\"logit\\\" transformation\\nis applied to the p-values so that a local\\nFDR estimate can be formed that does not\\ninvolve edge effects of the [0,1] interval\\nin which the p-values lie.  [default:\\nprobit]"
    lf_dr_adj: "Numeric value that is applied as a multiple\\nof the smoothing bandwidth used in the\\ndensity estimation.  [default: 1.5]"
    lf_dr_eps: "Numeric value that is threshold for the\\ntails of the empirical p-value distribution.\\n[default: 1e-08]"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}