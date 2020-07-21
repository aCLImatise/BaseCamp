class: CommandLineTool
id: ../../../phastBias.cwl
inputs:
- id: bgc
  doc: 'The B parameter describes the strength of gBGC.  It must be > 0. Too low of
    a value may yield false positives, as the gBGC model  becomes indistinguishable
    from the non-gBGC model. Default: 3'
  type: string
  inputBinding:
    prefix: --bgc
- id: estimate_bgc
  doc: 'Use "--estimate-bgc 1" to estimate B by maximum likelihood. Default: 0'
  type: string
  inputBinding:
    prefix: --estimate-bgc
- id: bgc_exp_length
  doc: 'Set the prior expected length of gBGC tracts.  This is equivalent to 1/alpha
    in the parametrization defined by Capra et al, where alpha is the rate out of
    gBGC states. Default: 1000'
  type: long
  inputBinding:
    prefix: --bgc-exp-length
- id: estimate_bgc_exp_length
  doc: 'Use "--estimate-bgc-exp-length 1" to estimate this parameter by an expectation-maximization
    algorithm. Default: 0'
  type: string
  inputBinding:
    prefix: --estimate-bgc-exp-length
- id: bgc_target_coverage
  doc: 'Set the prior for gBGC tract coverage (as a fraction between 0 and 1). This
    is represented in the model as beta/(alpha+beta), where beta is the rate into
    the gBGC state, and alpha is the rate out of the gBGC state. Default: 0.01'
  type: string
  inputBinding:
    prefix: --bgc-target-coverage
- id: estimate_bgc_target_coverage
  doc: 'Use "--estimate-bgc-target-coverage 0" to hold this parameter constant. Default:
    1 (This is the only parameter estimated by default.)'
  type: string
  inputBinding:
    prefix: --estimate-bgc-target-coverage
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
- id: scale
  doc: 'Set an overall scaling factor for the branch lengths in all states. Default:
    1'
  type: string
  inputBinding:
    prefix: --scale
- id: estimate_scale
  doc: 'Rescale the branches in all states by a scaling factor determined by maximum
    likelihood (initialized by --scale above). Default: 0'
  type: string
  inputBinding:
    prefix: --estimate-scale
- id: eq_freqs_from_msa
  doc: 'Reset equilibrium frequencies of A,C,G,T based on frequencies observed in
    the alignment.  Otherwise will not be altered from input model. Default: 1'
  type: string
  inputBinding:
    prefix: --eqfreqs-from-msa
- id: output_tracts
  doc: Print a GFF file identifying all regions with posterior probability of being
    in a gBGC state > 0.5.
  type: File
  inputBinding:
    prefix: --output-tracts
- id: posteriors
  doc: 'Use this option to control posterior probability output, which is  written
    to stdout.  "none" implies do not output anything; wig outputs a standard fixed-step
    wiggle file giving the probability that each base is assigned to a gBGC state;
    "full" outputs a table with five columns.  The first column is the coordinate
    (1-based relative to the first sequence in the alignment), followed by the probabilities
    of each of the four states: neutral, conserved, gBGC neutral,  gBGC conserved.
    Default: wig'
  type: string
  inputBinding:
    prefix: --posteriors
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
- id: alignment
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: neutral_dot_mod
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: foreground_branch
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- phastBias
