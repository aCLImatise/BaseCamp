class: CommandLineTool
id: pyprophet_peptide.cwl
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
- id: in_context
  doc: "[run-specific|experiment-wide|global]\nContext to estimate protein-level FDR\n\
    control.  [default: run-specific]"
  type: boolean
  inputBinding:
    prefix: --context
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
- peptide
