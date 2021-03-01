class: CommandLineTool
id: locarnate.cwl
inputs:
- id: in_pairwise_parameters
  doc: parameters for the pairwise alignment step
  type: boolean?
  inputBinding:
    prefix: --pairwise_parameters
- id: in_t_coffee_params
  doc: parameters for tcoffee
  type: boolean?
  inputBinding:
    prefix: --tcoffee_params
- id: in_pp_calculator_params
  doc: parameters for locarna_rnafold_pp
  type: boolean?
  inputBinding:
    prefix: --pp_calculator_params
- id: in_output
  doc: path to output folder
  type: File?
  inputBinding:
    prefix: --output
- id: in_library_only
  doc: "if given only a t-coffee library will be written without actual\ncomputation"
  type: boolean?
  inputBinding:
    prefix: --library-only
- id: in_library_name
  doc: "the file name of the produced t-coffee library (default:\n\"input.lib\")"
  type: boolean?
  inputBinding:
    prefix: --library-name
- id: in_additional_libraries
  doc: "a comma separated list of paths to t-coffee library files that\nshould be\
    \ given to t-coffee in addition to the one generated during\nthis run"
  type: boolean?
  inputBinding:
    prefix: --additional-libraries
- id: in_pairwise_aligner
  doc: 'which pairwise aligner to use (default: locarna)'
  type: boolean?
  inputBinding:
    prefix: --pairwise_aligner
- id: in_scaling_factor
  doc: each edge from each EPM gets the same weight (exparnap only!)
  type: boolean?
  inputBinding:
    prefix: --scaling_factor
- id: in_pp_calculater_params
  doc: ''
  type: string?
  inputBinding:
    prefix: --pp_calculater_params
- id: in_creates
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_alignment
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_or
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_msas
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_exp_a_rnap
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_using
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_different
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_pairwise
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_aligners
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_t_coffee
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_as
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 9
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: path to output folder
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- locarnate
