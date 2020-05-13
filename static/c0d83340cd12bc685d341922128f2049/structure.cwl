class: CommandLineTool
id: structure.py.cwl
inputs:
- id: k
  doc: (number of populations)
  type: long
  inputBinding:
    prefix: -K
- id: input
  doc: (/path/to/input/file)
  type: File
  inputBinding:
    prefix: --input
- id: output
  doc: (/path/to/output/file)
  type: File
  inputBinding:
    prefix: --output
- id: to_l
  doc: '(convergence criterion; default: 10e-6)'
  type: double
  inputBinding:
    prefix: --tol
- id: prior
  doc: '(choice of prior; default: simple)'
  type: string
  inputBinding:
    prefix: --prior
- id: cv
  doc: '(number of test sets for cross-validation, 0 implies no CV step; default:
    0)'
  type: long
  inputBinding:
    prefix: --cv
- id: format
  doc: '(format of input file; default: bed)'
  type: string
  inputBinding:
    prefix: --format
- id: full
  doc: (to output all variational parameters; optional)
  type: boolean
  inputBinding:
    prefix: --full
- id: seed
  doc: (manually specify seed for random number generator; optional)
  type: long
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- structure.py
