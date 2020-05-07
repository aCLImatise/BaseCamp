class: CommandLineTool
id: design_energyshift.py.cwl
inputs:
- id: file
  doc: Read file in *.inp format
  type: File
  inputBinding:
    prefix: --file
- id: input
  doc: Read custom structures and sequence constraints from stdin
  type: boolean
  inputBinding:
    prefix: --input
- id: package
  doc: 'Chose the calculation package: hotknots, pkiss, nupack, or vrna/ViennaRNA
    (default: vrna)'
  type: string
  inputBinding:
    prefix: --package
- id: objective
  doc: 'Chose the objective function: 1 for abs differences and 2 for squared (default:
    1)'
  type: string
  inputBinding:
    prefix: --objective
- id: temperature
  doc: Temperature of the energy calculations.
  type: string
  inputBinding:
    prefix: --temperature
- id: number
  doc: Number of designs to generate
  type: string
  inputBinding:
    prefix: --number
- id: model
  doc: 'Model for getting a new sequence: uniform, nussinov, basepairs, stacking'
  type: string
  inputBinding:
    prefix: --model
- id: energies
  doc: Target Energies for design. String of comma separated float values.
  type: string
  inputBinding:
    prefix: --energies
- id: stop
  doc: Stop optimization run of unpaired bases if no better solution is aquired after
    (stop) trials. 0 is no local optimization.
  type: string
  inputBinding:
    prefix: --stop
- id: csv
  doc: Write output as semi-colon csv file to stdout
  type: boolean
  inputBinding:
    prefix: --csv
- id: kill
  doc: 'Timeout value of graph construction in seconds. (default: infinite)'
  type: string
  inputBinding:
    prefix: --kill
- id: progress
  doc: Show progress of optimization
  type: boolean
  inputBinding:
    prefix: --progress
- id: debug
  doc: Show debug information of library
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- design-energyshift.py
