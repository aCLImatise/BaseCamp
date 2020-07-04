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
      ~{true="--classifier" false="" classifier} \
      ~{true="--xgb_autotune" false="" x_gb_autotune} \
      ~{if defined(apply_weights) then ("--apply_weights " +  '"' + apply_weights + '"') else ""} \
      ~{if defined(x_eval_fraction) then ("--xeval_fraction " +  '"' + x_eval_fraction + '"') else ""} \
      ~{if defined(x_eval_num_iter) then ("--xeval_num_iter " +  '"' + x_eval_num_iter + '"') else ""} \
      ~{if defined(ss_initial_fdr) then ("--ss_initial_fdr " +  '"' + ss_initial_fdr + '"') else ""} \
      ~{if defined(ss_iteration_fdr) then ("--ss_iteration_fdr " +  '"' + ss_iteration_fdr + '"') else ""} \
      ~{if defined(ss_num_iter) then ("--ss_num_iter " +  '"' + ss_num_iter + '"') else ""} \
      ~{if defined(ss_main_score) then ("--ss_main_score " +  '"' + ss_main_score + '"') else ""} \
      ~{if defined(group_id) then ("--group_id " +  '"' + group_id + '"') else ""} \
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
      ~{if defined(lf_dr_eps) then ("--lfdr_eps " +  '"' + lf_dr_eps + '"') else ""} \
      ~{true="--level" false="" level} \
      ~{if defined(ipf_max_peak_group_rank) then ("--ipf_max_peakgroup_rank " +  '"' + ipf_max_peak_group_rank + '"') else ""} \
      ~{if defined(ipf_max_peak_group_pep) then ("--ipf_max_peakgroup_pep " +  '"' + ipf_max_peak_group_pep + '"') else ""} \
      ~{if defined(ipf_max_transition_isotope_overlap) then ("--ipf_max_transition_isotope_overlap " +  '"' + ipf_max_transition_isotope_overlap + '"') else ""} \
      ~{if defined(ipf_min_transition_sn) then ("--ipf_min_transition_sn " +  '"' + ipf_min_transition_sn + '"') else ""} \
      ~{true="--tric_chromprob" false="" tric_chrom_prob} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--test" false="" test}
  >>>
  parameter_meta {
    in: "PyProphet input file.  [required]"
    out: "PyProphet output file."
    classifier: "[LDA|XGBoost]      Either a \"LDA\" or \"XGBoost\" classifier is used for semi-supervised learning. [default: LDA]"
    x_gb_autotune: "/ --no-xgb_autotune XGBoost: Autotune hyperparameters. [default: False]"
    apply_weights: "Apply PyProphet score weights file instead of semi-supervised learning."
    x_eval_fraction: "Data fraction used for cross-validation of semi-supervised learning step.  [default: 0.5]"
    x_eval_num_iter: "Number of iterations for cross-validation of semi-supervised learning step.  [default: 10]"
    ss_initial_fdr: "Initial FDR cutoff for best scoring targets. [default: 0.15]"
    ss_iteration_fdr: "Iteration FDR cutoff for best scoring targets.  [default: 0.05]"
    ss_num_iter: "Number of iterations for semi-supervised learning step.  [default: 10]"
    ss_main_score: "Main score to start semi-supervised- learning.  [default: var_xcorr_shape]"
    group_id: "Group identifier for calculation of statistics.  [default: group_id]"
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
    level: "[ms1|ms2|ms1ms2|transition] Either \"ms1\", \"ms2\", \"ms1ms2\" or \"transition\"; the data level selected for scoring. \"ms1ms2 integrates both MS1- and MS2-level scores and can be used instead of \"ms2\"-level results.\"  [default: ms2]"
    ipf_max_peak_group_rank: "Assess transitions only for candidate peak groups until maximum peak group rank. [default: 1]"
    ipf_max_peak_group_pep: "Assess transitions only for candidate peak groups until maximum posterior error probability.  [default: 0.7]"
    ipf_max_transition_isotope_overlap: "Maximum isotope overlap to consider transitions in IPF.  [default: 0.5]"
    ipf_min_transition_sn: "Minimum log signal-to-noise level to consider transitions in IPF. Set -1 to disable this filter.  [default: 0]"
    tric_chrom_prob: "/ --no-tric_chromprob Whether chromatogram probabilities for TRIC should be computed.  [default: False]"
    threads: "Number of threads used for semi-supervised learning. -1 means all available CPUs. [default: 1]"
    test: "/ --no-test              Run in test mode with fixed seed.  [default: False]"
  }
}