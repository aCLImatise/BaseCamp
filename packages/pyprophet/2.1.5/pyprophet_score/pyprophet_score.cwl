class: CommandLineTool
id: ../../../pyprophet_score.cwl
inputs:
- id: in_in
  doc: PyProphet input file.  [required]
  type: File
  inputBinding:
    prefix: --in
- id: in_out
  doc: PyProphet output file.
  type: File
  inputBinding:
    prefix: --out
- id: in_classifier
  doc: "[LDA|XGBoost]      Either a \"LDA\" or \"XGBoost\" classifier is\nused for\
    \ semi-supervised learning.\n[default: LDA]"
  type: boolean
  inputBinding:
    prefix: --classifier
- id: in_x_gb_autotune
  doc: "/ --no-xgb_autotune\nXGBoost: Autotune hyperparameters.\n[default: False]"
  type: boolean
  inputBinding:
    prefix: --xgb_autotune
- id: in_apply_weights
  doc: "Apply PyProphet score weights file instead\nof semi-supervised learning."
  type: File
  inputBinding:
    prefix: --apply_weights
- id: in_x_eval_fraction
  doc: "Data fraction used for cross-validation of\nsemi-supervised learning step.\
    \  [default:\n0.5]"
  type: double
  inputBinding:
    prefix: --xeval_fraction
- id: in_x_eval_num_iter
  doc: "Number of iterations for cross-validation of\nsemi-supervised learning step.\
    \  [default:\n10]"
  type: long
  inputBinding:
    prefix: --xeval_num_iter
- id: in_ss_initial_fdr
  doc: "Initial FDR cutoff for best scoring targets.\n[default: 0.15]"
  type: double
  inputBinding:
    prefix: --ss_initial_fdr
- id: in_ss_iteration_fdr
  doc: Iteration FDR cutoff for best scoring
  type: double
  inputBinding:
    prefix: --ss_iteration_fdr
- id: in_ss_num_iter
  doc: "Number of iterations for semi-supervised\nlearning step.  [default: 10]"
  type: long
  inputBinding:
    prefix: --ss_num_iter
- id: in_ss_main_score
  doc: Main score to start semi-supervised-
  type: string
  inputBinding:
    prefix: --ss_main_score
- id: in_group_id
  doc: Group identifier for calculation of
  type: string
  inputBinding:
    prefix: --group_id
- id: in_parametric
  doc: "/ --no-parametric  Do parametric estimation of p-values.\n[default: False]"
  type: boolean
  inputBinding:
    prefix: --parametric
- id: in_pf_dr
  doc: "/ --no-pfdr              Compute positive false discovery rate (pFDR)\ninstead\
    \ of FDR.  [default: False]"
  type: boolean
  inputBinding:
    prefix: --pfdr
- id: in_pi_zero_lambda
  doc: "...\nUse non-parametric estimation of p-values.\nEither use <START END STEPS>,\
    \ e.g. 0.1, 1.0,\n0.1 or set to fixed value, e.g. 0.4, 0, 0.\n[default: 0.1, 0.5,\
    \ 0.05]"
  type: double
  inputBinding:
    prefix: --pi0_lambda
- id: in_pi_zero_method
  doc: "[smoother|bootstrap]\nEither \"smoother\" or \"bootstrap\"; the method\nfor\
    \ automatically choosing tuning parameter\nin the estimation of pi_0, the proportion\
    \ of\ntrue null hypotheses.  [default: bootstrap]"
  type: boolean
  inputBinding:
    prefix: --pi0_method
- id: in_pi_zero_smooth_df
  doc: "Number of degrees-of-freedom to use when\nestimating pi_0 with a smoother.\
    \  [default:\n3]"
  type: long
  inputBinding:
    prefix: --pi0_smooth_df
- id: in_pi_zero_smooth_log_pi_zero
  doc: "/ --no-pi0_smooth_log_pi0\nIf True and pi0_method = \"smoother\", pi0\nwill\
    \ be estimated by applying a smoother to\na scatterplot of log(pi0) estimates\
    \ against\nthe tuning parameter lambda.  [default:\nFalse]"
  type: boolean
  inputBinding:
    prefix: --pi0_smooth_log_pi0
- id: in_lf_dr_truncate
  doc: "/ --no-lfdr_truncate\nIf True, local FDR values >1 are set to 1.\n[default:\
    \ True]"
  type: boolean
  inputBinding:
    prefix: --lfdr_truncate
- id: in_lf_dr_monotone
  doc: "/ --no-lfdr_monotone\nIf True, local FDR values are non-decreasing\nwith increasing\
    \ p-values.  [default: True]"
  type: boolean
  inputBinding:
    prefix: --lfdr_monotone
- id: in_lf_dr_transformation
  doc: "[probit|logit]\nEither a \"probit\" or \"logit\" transformation\nis applied\
    \ to the p-values so that a local\nFDR estimate can be formed that does not\n\
    involve edge effects of the [0,1] interval\nin which the p-values lie.  [default:\n\
    probit]"
  type: boolean
  inputBinding:
    prefix: --lfdr_transformation
- id: in_lf_dr_adj
  doc: "Numeric value that is applied as a multiple\nof the smoothing bandwidth used\
    \ in the\ndensity estimation.  [default: 1.5]"
  type: double
  inputBinding:
    prefix: --lfdr_adj
- id: in_lf_dr_eps
  doc: "Numeric value that is threshold for the\ntails of the empirical p-value distribution.\n\
    [default: 1e-08]"
  type: double
  inputBinding:
    prefix: --lfdr_eps
- id: in_level
  doc: "[ms1|ms2|ms1ms2|transition]\nEither \"ms1\", \"ms2\", \"ms1ms2\" or\n\"transition\"\
    ; the data level selected for\nscoring. \"ms1ms2 integrates both MS1- and\nMS2-level\
    \ scores and can be used instead of\n\"ms2\"-level results.\"  [default: ms2]"
  type: boolean
  inputBinding:
    prefix: --level
- id: in_ipf_max_peak_group_rank
  doc: "Assess transitions only for candidate peak\ngroups until maximum peak group\
    \ rank.\n[default: 1]"
  type: long
  inputBinding:
    prefix: --ipf_max_peakgroup_rank
- id: in_ipf_max_peak_group_pep
  doc: "Assess transitions only for candidate peak\ngroups until maximum posterior\
    \ error\nprobability.  [default: 0.7]"
  type: double
  inputBinding:
    prefix: --ipf_max_peakgroup_pep
- id: in_ipf_max_transition_isotope_overlap
  doc: "Maximum isotope overlap to consider\ntransitions in IPF.  [default: 0.5]"
  type: double
  inputBinding:
    prefix: --ipf_max_transition_isotope_overlap
- id: in_ipf_min_transition_sn
  doc: "Minimum log signal-to-noise level to\nconsider transitions in IPF. Set -1\
    \ to\ndisable this filter.  [default: 0]"
  type: double
  inputBinding:
    prefix: --ipf_min_transition_sn
- id: in_tric_chrom_prob
  doc: "/ --no-tric_chromprob\nWhether chromatogram probabilities for TRIC\nshould\
    \ be computed.  [default: False]"
  type: boolean
  inputBinding:
    prefix: --tric_chromprob
- id: in_threads
  doc: "Number of threads used for semi-supervised\nlearning. -1 means all available\
    \ CPUs.\n[default: 1]"
  type: long
  inputBinding:
    prefix: --threads
- id: in_test
  doc: "/ --no-test              Run in test mode with fixed seed.  [default:\nFalse]"
  type: boolean
  inputBinding:
    prefix: --test
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: PyProphet output file.
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- pyprophet
- score
