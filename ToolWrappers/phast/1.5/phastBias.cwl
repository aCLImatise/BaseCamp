class: CommandLineTool
id: phastBias.cwl
inputs:
- id: in_msa_format
  doc: ).  The neutral model must be in the .mod format
  type: boolean?
  inputBinding:
    prefix: --msa-format
- id: in_bgc
  doc: "The B parameter describes the strength of gBGC.  It must be > 0.\nToo low\
    \ of a value may yield false positives, as the gBGC model\nbecomes indistinguishable\
    \ from the non-gBGC model.\nDefault: 3"
  type: long?
  inputBinding:
    prefix: --bgc
- id: in_estimate_bgc
  doc: "Use \"--estimate-bgc 1\" to estimate B by maximum likelihood.\nDefault: 0"
  type: long?
  inputBinding:
    prefix: --estimate-bgc
- id: in_bgc_exp_length
  doc: "Set the prior expected length of gBGC tracts.  This is equivalent to\n1/alpha\
    \ in the parametrization defined by Capra et al, where\nalpha is the rate out\
    \ of gBGC states.\nDefault: 1000"
  type: long?
  inputBinding:
    prefix: --bgc-exp-length
- id: in_estimate_bgc_exp_length
  doc: "Use \"--estimate-bgc-exp-length 1\" to estimate this parameter by an\nexpectation-maximization\
    \ algorithm.\nDefault: 0"
  type: long?
  inputBinding:
    prefix: --estimate-bgc-exp-length
- id: in_bgc_target_coverage
  doc: "Set the prior for gBGC tract coverage (as a fraction between 0 and 1).\nThis\
    \ is represented in the model as beta/(alpha+beta), where beta\nis the rate into\
    \ the gBGC state, and alpha is the rate out of the\ngBGC state.\nDefault: 0.01"
  type: double?
  inputBinding:
    prefix: --bgc-target-coverage
- id: in_estimate_bgc_target_coverage
  doc: "Use \"--estimate-bgc-target-coverage 0\" to hold this parameter constant.\n\
    Default: 1 (This is the only parameter estimated by default.)"
  type: long?
  inputBinding:
    prefix: --estimate-bgc-target-coverage
- id: in_rho
  doc: "Set the scaling factor for branch lengths in conserved states.  Rho should\n\
    be between 0 and 1.\nDefault: 0.31"
  type: double?
  inputBinding:
    prefix: --rho
- id: in_cons_exp_length
  doc: "Set the prior expected length of conserved elements.  This parameter is\n\
    held constant; if you want to tune it, it is recommended to do this\nwith the\
    \ phastCons program under a non-gBGC model (see the\n--expected-length option\
    \ in phastCons).\nDefault: 45"
  type: long?
  inputBinding:
    prefix: --cons-exp-length
- id: in_cons_target_coverage
  doc: "Set the prior for coverage of conserved elements (as a fraction\nbetween 0\
    \ and 1).  Like the --cons-exp-length above, this parameter\nis also held constant,\
    \ but can be tuned with phastCons (see\nphastCons --transitions).\nDefault: 0.3"
  type: long?
  inputBinding:
    prefix: --cons-target-coverage
- id: in_scale
  doc: "Set an overall scaling factor for the branch lengths in all states.\nDefault:\
    \ 1"
  type: long?
  inputBinding:
    prefix: --scale
- id: in_estimate_scale
  doc: "Rescale the branches in all states by a scaling factor determined by\nmaximum\
    \ likelihood (initialized by --scale above).\nDefault: 0"
  type: long?
  inputBinding:
    prefix: --estimate-scale
- id: in_eq_freqs_from_msa
  doc: "Reset equilibrium frequencies of A,C,G,T based on frequencies observed\nin\
    \ the alignment.  Otherwise will not be altered from input model.\nDefault: 1"
  type: long?
  inputBinding:
    prefix: --eqfreqs-from-msa
- id: in_output_tracts
  doc: "Print a GFF file identifying all regions with posterior probability of\nbeing\
    \ in a gBGC state > 0.5."
  type: File?
  inputBinding:
    prefix: --output-tracts
- id: in_posteriors
  doc: "Use this option to control posterior probability output, which is\nwritten\
    \ to stdout.  \"none\" implies do not output anything; wig outputs\na standard\
    \ fixed-step wiggle file giving the probability that each\nbase is assigned to\
    \ a gBGC state; \"full\" outputs a table with five\ncolumns.  The first column\
    \ is the coordinate (1-based relative to\nthe first sequence in the alignment),\
    \ followed by the probabilities\nof each of the four states: neutral, conserved,\
    \ gBGC neutral,\ngBGC conserved.\nDefault: wig"
  type: File?
  inputBinding:
    prefix: --posteriors
- id: in_output_mods
  doc: "Print out the tree models for all four states to <output_root>.cons.mod,\n\
    <output_root>.neutral.mod, <output_root>.gBGC_cons.mod, and\n<output_root>.gBGC_neutral.mod."
  type: string?
  inputBinding:
    prefix: --output-mods
- id: in_informative_fn
  doc: "Print a GFF containing regions of the alignment which are informative\nfor\
    \ gBGC. Note: only works properly if foreground branch is a single\nbranch (not\
    \ a group of branches)."
  type: File?
  inputBinding:
    prefix: --informative-fn
- id: in_informative_only
  doc: "(To be used with --informative-fn). Print the informative regions, then\n\
    quit."
  type: boolean?
  inputBinding:
    prefix: --informative-only
- id: in_states_dot
  doc: It can also produce gBGC tracts by thresholding this
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_posteriors
  doc: "Use this option to control posterior probability output, which is\nwritten\
    \ to stdout.  \"none\" implies do not output anything; wig outputs\na standard\
    \ fixed-step wiggle file giving the probability that each\nbase is assigned to\
    \ a gBGC state; \"full\" outputs a table with five\ncolumns.  The first column\
    \ is the coordinate (1-based relative to\nthe first sequence in the alignment),\
    \ followed by the probabilities\nof each of the four states: neutral, conserved,\
    \ gBGC neutral,\ngBGC conserved.\nDefault: wig"
  type: File?
  outputBinding:
    glob: $(inputs.in_posteriors)
hints: []
cwlVersion: v1.1
baseCommand:
- phastBias
