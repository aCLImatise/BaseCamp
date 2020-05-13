class: CommandLineTool
id: phastBias.cwl
inputs:
- id: rho
  doc: 'Set the scaling factor for branch lengths in conserved states.  Rho should
    be between 0 and 1. Default: 0.31'
  type: string
  inputBinding:
    prefix: --rho
- id: cons_exp_length
  doc: 'Set the prior expected length of conserved elements.  This parameter is held
    constant; if you want to tune it, it is recommended to do this with the phastCons
    program under a non-gBGC model (see the  --expected-length option in phastCons).
    Default: 45'
  type: long
  inputBinding:
    prefix: --cons-exp-length
- id: cons_target_coverage
  doc: 'Set the prior for coverage of conserved elements (as a fraction  between 0
    and 1).  Like the --cons-exp-length above, this parameter is also held constant,
    but can be tuned with phastCons (see phastCons --transitions). Default: 0.3'
  type: string
  inputBinding:
    prefix: --cons-target-coverage
- id: output_mods
  doc: Print out the tree models for all four states to <output_root>.cons.mod, <output_root>.neutral.mod,
    <output_root>.gBGC_cons.mod, and <output_root>.gBGC_neutral.mod.
  type: string
  inputBinding:
    prefix: --output-mods
- id: informative_fn
  doc: 'Print a GFF containing regions of the alignment which are informative for
    gBGC. Note: only works properly if foreground branch is a single branch (not a
    group of branches). '
  type: File
  inputBinding:
    prefix: --informative-fn
- id: informative_only
  doc: (To be used with --informative-fn). Print the informative regions, then quit.
  type: boolean
  inputBinding:
    prefix: --informative-only
outputs: []
cwlVersion: v1.1
baseCommand:
- phastBias
