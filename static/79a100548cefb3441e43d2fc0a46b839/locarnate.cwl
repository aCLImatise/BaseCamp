class: CommandLineTool
id: locarnate.cwl
inputs:
- id: pairwise_parameters
  doc: parameters for the pairwise alignment step
  type: boolean
  inputBinding:
    prefix: --pairwise_parameters
- id: t_coffee_params
  doc: parameters for tcoffee
  type: boolean
  inputBinding:
    prefix: --tcoffee_params
- id: pp_calculator_params
  doc: parameters for locarna_rnafold_pp
  type: boolean
  inputBinding:
    prefix: --pp_calculator_params
- id: output
  doc: path to output folder
  type: boolean
  inputBinding:
    prefix: --output
- id: library_only
  doc: if given only a t-coffee library will be written without actual computation
  type: boolean
  inputBinding:
    prefix: --library-only
- id: library_name
  doc: 'the file name of the produced t-coffee library (default: "input.lib")'
  type: boolean
  inputBinding:
    prefix: --library-name
- id: additional_libraries
  doc: a comma separated list of paths to t-coffee library files that should be given
    to t-coffee in addition to the one generated during this run
  type: boolean
  inputBinding:
    prefix: --additional-libraries
- id: pairwise_aligner
  doc: 'which pairwise aligner to use (default: locarna)'
  type: boolean
  inputBinding:
    prefix: --pairwise_aligner
- id: scaling_factor
  doc: each edge from each EPM gets the same weight (exparnap only!)
  type: boolean
  inputBinding:
    prefix: --scaling_factor
outputs: []
cwlVersion: v1.1
baseCommand:
- locarnate
