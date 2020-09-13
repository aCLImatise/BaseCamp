version 1.0

task PyprophetScore {
  input {
    File? in
    File? out
    Boolean? classifier
    Boolean? x_gb_autotune
    File? apply_weights
    Float? x_eval_fraction
    Int? x_eval_num_iter
    Float? ss_initial_fdr
    Float? ss_iteration_fdr
    Int? ss_num_iter
    String? ss_main_score
    String? group_id
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
    Boolean? level
    Int? ipf_max_peak_group_rank
    Float? ipf_max_peak_group_pep
    Float? ipf_max_transition_isotope_overlap
    Float? ipf_min_transition_sn
    Boolean? tric_chrom_prob
    Int? threads
    Boolean? test
  }
  command <<<
    pyprophet score \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (classifier) then "--classifier" else ""} \
      ~{if (x_gb_autotune) then "--xgb_autotune" else ""} \
      ~{if defined(apply_weights) then ("--apply_weights " +  '"' + apply_weights + '"') else ""} \
      ~{if defined(x_eval_fraction) then ("--xeval_fraction " +  '"' + x_eval_fraction + '"') else ""} \
      ~{if defined(x_eval_num_iter) then ("--xeval_num_iter " +  '"' + x_eval_num_iter + '"') else ""} \
      ~{if defined(ss_initial_fdr) then ("--ss_initial_fdr " +  '"' + ss_initial_fdr + '"') else ""} \
      ~{if defined(ss_iteration_fdr) then ("--ss_iteration_fdr " +  '"' + ss_iteration_fdr + '"') else ""} \
      ~{if defined(ss_num_iter) then ("--ss_num_iter " +  '"' + ss_num_iter + '"') else ""} \
      ~{if defined(ss_main_score) then ("--ss_main_score " +  '"' + ss_main_score + '"') else ""} \
      ~{if defined(group_id) then ("--group_id " +  '"' + group_id + '"') else ""} \
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
      ~{if defined(lf_dr_eps) then ("--lfdr_eps " +  '"' + lf_dr_eps + '"') else ""} \
      ~{if (level) then "--level" else ""} \
      ~{if defined(ipf_max_peak_group_rank) then ("--ipf_max_peakgroup_rank " +  '"' + ipf_max_peak_group_rank + '"') else ""} \
      ~{if defined(ipf_max_peak_group_pep) then ("--ipf_max_peakgroup_pep " +  '"' + ipf_max_peak_group_pep + '"') else ""} \
      ~{if defined(ipf_max_transition_isotope_overlap) then ("--ipf_max_transition_isotope_overlap " +  '"' + ipf_max_transition_isotope_overlap + '"') else ""} \
      ~{if defined(ipf_min_transition_sn) then ("--ipf_min_transition_sn " +  '"' + ipf_min_transition_sn + '"') else ""} \
      ~{if (tric_chrom_prob) then "--tric_chromprob" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (test) then "--test" else ""}
  >>>
  parameter_meta {
    in: "PyProphet input file.  [required]"
    out: "PyProphet output file."
    classifier: "[LDA|XGBoost]      Either a \\\"LDA\\\" or \\\"XGBoost\\\" classifier is\\nused for semi-supervised learning.\\n[default: LDA]"
    x_gb_autotune: "/ --no-xgb_autotune\\nXGBoost: Autotune hyperparameters.\\n[default: False]"
    apply_weights: "Apply PyProphet score weights file instead\\nof semi-supervised learning."
    x_eval_fraction: "Data fraction used for cross-validation of\\nsemi-supervised learning step.  [default:\\n0.5]"
    x_eval_num_iter: "Number of iterations for cross-validation of\\nsemi-supervised learning step.  [default:\\n10]"
    ss_initial_fdr: "Initial FDR cutoff for best scoring targets.\\n[default: 0.15]"
    ss_iteration_fdr: "Iteration FDR cutoff for best scoring"
    ss_num_iter: "Number of iterations for semi-supervised\\nlearning step.  [default: 10]"
    ss_main_score: "Main score to start semi-supervised-"
    group_id: "Group identifier for calculation of"
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
    level: "[ms1|ms2|ms1ms2|transition]\\nEither \\\"ms1\\\", \\\"ms2\\\", \\\"ms1ms2\\\" or\\n\\\"transition\\\"; the data level selected for\\nscoring. \\\"ms1ms2 integrates both MS1- and\\nMS2-level scores and can be used instead of\\n\\\"ms2\\\"-level results.\\\"  [default: ms2]"
    ipf_max_peak_group_rank: "Assess transitions only for candidate peak\\ngroups until maximum peak group rank.\\n[default: 1]"
    ipf_max_peak_group_pep: "Assess transitions only for candidate peak\\ngroups until maximum posterior error\\nprobability.  [default: 0.7]"
    ipf_max_transition_isotope_overlap: "Maximum isotope overlap to consider\\ntransitions in IPF.  [default: 0.5]"
    ipf_min_transition_sn: "Minimum log signal-to-noise level to\\nconsider transitions in IPF. Set -1 to\\ndisable this filter.  [default: 0]"
    tric_chrom_prob: "/ --no-tric_chromprob\\nWhether chromatogram probabilities for TRIC\\nshould be computed.  [default: False]"
    threads: "Number of threads used for semi-supervised\\nlearning. -1 means all available CPUs.\\n[default: 1]"
    test: "/ --no-test              Run in test mode with fixed seed.  [default:\\nFalse]"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}