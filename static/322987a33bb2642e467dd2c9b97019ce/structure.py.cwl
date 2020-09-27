class: CommandLineTool
id: structure.py.cwl
inputs:
- id: in_number_of_populations
  doc: (number of populations)
  type: long
  inputBinding:
    prefix: -K
- id: in_input
  doc: (/path/to/input/file)
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: (/path/to/output/file)
  type: File
  inputBinding:
    prefix: --output
- id: in_to_l
  doc: '(convergence criterion; default: 10e-6)'
  type: double
  inputBinding:
    prefix: --tol
- id: in_prior
  doc: '(choice of prior; default: simple)'
  type: string
  inputBinding:
    prefix: --prior
- id: in_cv
  doc: '(number of test sets for cross-validation, 0 implies no CV step; default:
    0)'
  type: long
  inputBinding:
    prefix: --cv
- id: in_format
  doc: '(format of input file; default: bed)'
  type: string
  inputBinding:
    prefix: --format
- id: in_full
  doc: (to output all variational parameters; optional)
  type: boolean
  inputBinding:
    prefix: --full
- id: in_seed
  doc: (manually specify seed for random number generator; optional)
  type: long
  inputBinding:
    prefix: --seed
- id: in_python
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: (/path/to/output/file)
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- structure.py
