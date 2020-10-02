class: CommandLineTool
id: centroid_alifold.cwl
inputs:
- id: in_arg_specify_default
  doc: "[ --engine ] arg     specify the inference engine (default: \"McCaskill &\n\
    Alifold\")"
  type: boolean
  inputBinding:
    prefix: -e
- id: in_arg_mixture_weights
  doc: '[ --mixture ] arg    mixture weights of inference engines'
  type: boolean
  inputBinding:
    prefix: -w
- id: in_arg_weight_base
  doc: '[ --gamma ] arg      weight of base pairs'
  type: boolean
  inputBinding:
    prefix: -g
- id: in_arg_thereshold_base
  doc: "[ --threshold ] arg  thereshold of base pairs (this option overwrites\n'gamma')"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_ea
  doc: "compute (pseudo-)expected accuracy (pseudo if arg==0,\nsampling if arg>0;\
    \ arg: # of sampling)"
  type: long
  inputBinding:
    prefix: --ea
- id: in_max_mcc
  doc: "predict secondary structure by maximizing\npseudo-expected MCC (arg: # of\
    \ sampling)"
  type: long
  inputBinding:
    prefix: --max-mcc
- id: in_me_a
  doc: run as an MEA estimator
  type: boolean
  inputBinding:
    prefix: --mea
- id: in_noncanonical
  doc: allow non-canonical base-pairs
  type: boolean
  inputBinding:
    prefix: --noncanonical
- id: in_use_structure_constraints
  doc: '[ --constraints ]    use structure constraints'
  type: boolean
  inputBinding:
    prefix: -C
- id: in_arg_specify_filename
  doc: "[ --output ] arg     specify filename to output predicted secondary\nstructures.\
    \ If empty, use the standard output."
  type: File
  inputBinding:
    prefix: -o
- id: in_posteriors
  doc: "output base-pairing probability matrices which\ncontain base-pairing probabilities\
    \ more than the\ngiven value."
  type: string
  inputBinding:
    prefix: --posteriors
- id: in_posteriors_output
  doc: "specify filename to output base-pairing probability\nmatrices. If empty, use\
    \ the standard output."
  type: File
  inputBinding:
    prefix: --posteriors-output
- id: in_postscript
  doc: "draw predicted secondary structures with the\npostscript (PS) format"
  type: string
  inputBinding:
    prefix: --postscript
- id: in_params
  doc: use the parameter file
  type: File
  inputBinding:
    prefix: --params
- id: in_arg_maximum_distance
  doc: '[ --max-dist ] arg (=0) the maximum distance of base-pairs'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_arg_specify_number
  doc: "[ --sampling ] arg           specify the number of samples to be generated\n\
    for each sequence"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_arg_maximum_number
  doc: "[ --max-clusters ] arg (=10) the maximum number of clusters for the\nstochastic\
    \ sampling algorithm"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_seed
  doc: "(=0)                 specify the seed for the random number\ngenerator (set\
    \ this automatically if seed=0)\n"
  type: long
  inputBinding:
    prefix: --seed
- id: in_seq
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_specify_filename
  doc: "[ --output ] arg     specify filename to output predicted secondary\nstructures.\
    \ If empty, use the standard output."
  type: File
  outputBinding:
    glob: $(inputs.in_arg_specify_filename)
- id: out_posteriors_output
  doc: "specify filename to output base-pairing probability\nmatrices. If empty, use\
    \ the standard output."
  type: File
  outputBinding:
    glob: $(inputs.in_posteriors_output)
cwlVersion: v1.1
baseCommand:
- centroid_alifold
