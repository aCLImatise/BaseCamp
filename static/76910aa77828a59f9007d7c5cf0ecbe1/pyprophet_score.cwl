class: CommandLineTool
id: pyprophet_score.cwl
inputs:
- id: in
  doc: PyProphet input file.  [required]
  type: File
  inputBinding:
    prefix: --in
- id: out
  doc: PyProphet output file.
  type: File
  inputBinding:
    prefix: --out
- id: classifier
  doc: '[LDA|XGBoost]      Either a "LDA" or "XGBoost" classifier is used for semi-supervised
    learning. [default: LDA]'
  type: boolean
  inputBinding:
    prefix: --classifier
- id: x_gb_autotune
  doc: '/ --no-xgb_autotune XGBoost: Autotune hyperparameters. [default: False]'
  type: boolean
  inputBinding:
    prefix: --xgb_autotune
- id: apply_weights
  doc: Apply PyProphet score weights file instead of semi-supervised learning.
  type: File
  inputBinding:
    prefix: --apply_weights
- id: x_eval_fraction
  doc: 'Data fraction used for cross-validation of semi-supervised learning step.  [default:
    0.5]'
  type: double
  inputBinding:
    prefix: --xeval_fraction
- id: x_eval_num_iter
  doc: 'Number of iterations for cross-validation of semi-supervised learning step.  [default:
    10]'
  type: long
  inputBinding:
    prefix: --xeval_num_iter
- id: ss_initial_fdr
  doc: 'Initial FDR cutoff for best scoring targets. [default: 0.15]'
  type: double
  inputBinding:
    prefix: --ss_initial_fdr
- id: ss_iteration_fdr
  doc: 'Iteration FDR cutoff for best scoring targets.  [default: 0.05]'
  type: double
  inputBinding:
    prefix: --ss_iteration_fdr
- id: ss_num_iter
  doc: 'Number of iterations for semi-supervised learning step.  [default: 10]'
  type: long
  inputBinding:
    prefix: --ss_num_iter
- id: ss_main_score
  doc: 'Main score to start semi-supervised- learning.  [default: var_xcorr_shape]'
  type: string
  inputBinding:
    prefix: --ss_main_score
- id: group_id
  doc: 'Group identifier for calculation of statistics.  [default: group_id]'
  type: string
  inputBinding:
    prefix: --group_id
- id: parametric
  doc: '/ --no-parametric  Do parametric estimation of p-values. [default: False]'
  type: boolean
  inputBinding:
    prefix: --parametric
- id: pf_dr
  doc: '/ --no-pfdr              Compute positive false discovery rate (pFDR) instead
    of FDR.  [default: False]'
  type: boolean
  inputBinding:
    prefix: --pfdr
- id: pi0_lambda
  doc: '... Use non-parametric estimation of p-values. Either use <START END STEPS>,
    e.g. 0.1, 1.0, 0.1 or set to fixed value, e.g. 0.4, 0, 0. [default: 0.1, 0.5,
    0.05]'
  type: double
  inputBinding:
    prefix: --pi0_lambda
- id: pi0_method
  doc: '[smoother|bootstrap] Either "smoother" or "bootstrap"; the method for automatically
    choosing tuning parameter in the estimation of pi_0, the proportion of true null
    hypotheses.  [default: bootstrap]'
  type: boolean
  inputBinding:
    prefix: --pi0_method
- id: pi0_smooth_df
  doc: 'Number of degrees-of-freedom to use when estimating pi_0 with a smoother.  [default:
    3]'
  type: long
  inputBinding:
    prefix: --pi0_smooth_df
- id: pi0_smooth_log_pi0
  doc: '/ --no-pi0_smooth_log_pi0 If True and pi0_method = "smoother", pi0 will be
    estimated by applying a smoother to a scatterplot of log(pi0) estimates against
    the tuning parameter lambda.  [default: False]'
  type: boolean
  inputBinding:
    prefix: --pi0_smooth_log_pi0
- id: lf_dr_truncate
  doc: '/ --no-lfdr_truncate If True, local FDR values >1 are set to 1. [default:
    True]'
  type: boolean
  inputBinding:
    prefix: --lfdr_truncate
- id: lf_dr_monotone
  doc: '/ --no-lfdr_monotone If True, local FDR values are non-decreasing with increasing
    p-values.  [default: True]'
  type: boolean
  inputBinding:
    prefix: --lfdr_monotone
- id: lf_dr_transformation
  doc: '[probit|logit] Either a "probit" or "logit" transformation is applied to the
    p-values so that a local FDR estimate can be formed that does not involve edge
    effects of the [0,1] interval in which the p-values lie.  [default: probit]'
  type: boolean
  inputBinding:
    prefix: --lfdr_transformation
- id: lf_dr_adj
  doc: 'Numeric value that is applied as a multiple of the smoothing bandwidth used
    in the density estimation.  [default: 1.5]'
  type: double
  inputBinding:
    prefix: --lfdr_adj
- id: lf_dr_eps
  doc: 'Numeric value that is threshold for the tails of the empirical p-value distribution.
    [default: 1e-08]'
  type: double
  inputBinding:
    prefix: --lfdr_eps
- id: level
  doc: '[ms1|ms2|ms1ms2|transition] Either "ms1", "ms2", "ms1ms2" or "transition";
    the data level selected for scoring. "ms1ms2 integrates both MS1- and MS2-level
    scores and can be used instead of "ms2"-level results."  [default: ms2]'
  type: boolean
  inputBinding:
    prefix: --level
- id: ipf_max_peak_group_rank
  doc: 'Assess transitions only for candidate peak groups until maximum peak group
    rank. [default: 1]'
  type: long
  inputBinding:
    prefix: --ipf_max_peakgroup_rank
- id: ipf_max_peak_group_pep
  doc: 'Assess transitions only for candidate peak groups until maximum posterior
    error probability.  [default: 0.7]'
  type: double
  inputBinding:
    prefix: --ipf_max_peakgroup_pep
- id: ipf_max_transition_isotope_overlap
  doc: 'Maximum isotope overlap to consider transitions in IPF.  [default: 0.5]'
  type: double
  inputBinding:
    prefix: --ipf_max_transition_isotope_overlap
- id: ipf_min_transition_sn
  doc: 'Minimum log signal-to-noise level to consider transitions in IPF. Set -1 to
    disable this filter.  [default: 0]'
  type: double
  inputBinding:
    prefix: --ipf_min_transition_sn
- id: tric_chrom_prob
  doc: '/ --no-tric_chromprob Whether chromatogram probabilities for TRIC should be
    computed.  [default: False]'
  type: boolean
  inputBinding:
    prefix: --tric_chromprob
- id: threads
  doc: 'Number of threads used for semi-supervised learning. -1 means all available
    CPUs. [default: 1]'
  type: long
  inputBinding:
    prefix: --threads
- id: test
  doc: '/ --no-test              Run in test mode with fixed seed.  [default: False]'
  type: boolean
  inputBinding:
    prefix: --test
outputs: []
cwlVersion: v1.1
baseCommand:
- pyprophet
- score
