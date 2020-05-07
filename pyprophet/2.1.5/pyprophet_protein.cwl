class: CommandLineTool
id: pyprophet_protein.cwl
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
- id: context
  doc: '[run-specific|experiment-wide|global] Context to estimate protein-level FDR
    control.  [default: run-specific]'
  type: boolean
  inputBinding:
    prefix: --context
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
outputs: []
cwlVersion: v1.1
baseCommand:
- pyprophet
- protein
