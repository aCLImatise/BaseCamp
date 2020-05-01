#!/usr/bin/env cwl-runner

baseCommand:
- structure.py
class: CommandLineTool
cwlVersion: v1.0
id: structure.py
inputs:
- doc: (number of populations)
  id: k
  inputBinding:
    prefix: -K
  type: long
- doc: (/path/to/input/file)
  id: input
  inputBinding:
    prefix: --input
  type: File
- doc: (/path/to/output/file)
  id: output
  inputBinding:
    prefix: --output
  type: File
- doc: '(convergence criterion; default: 10e-6)'
  id: to_l
  inputBinding:
    prefix: --tol
  type: double
- doc: '(choice of prior; default: simple)'
  id: prior
  inputBinding:
    prefix: --prior
  type: string
- doc: '(number of test sets for cross-validation, 0 implies no CV step; default:
    0)'
  id: cv
  inputBinding:
    prefix: --cv
  type: long
- doc: '(format of input file; default: bed)'
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: (to output all variational parameters; optional)
  id: full
  inputBinding:
    prefix: --full
  type: boolean
- doc: (manually specify seed for random number generator; optional)
  id: seed
  inputBinding:
    prefix: --seed
  type: long
