class: CommandLineTool
id: design_energyshift.py.cwl
inputs:
- id: input
  doc: "Read structures from input file. Default: read from stdin. Format must be\
    \ dot-bracket structures, each per one line with a trailing line containing only\
    \ a semi- colon. (default: <_io.TextIOWrapper name='<stdin>' mode='r' encoding='UTF-8'>)"
  type: string
  inputBinding:
    prefix: --input
- id: temperature
  doc: 'Temperature of the energy calculations. (default: 37.0)'
  type: string
  inputBinding:
    prefix: --temperature
- id: number
  doc: 'Number of designs to generate (default: 1000)'
  type: string
  inputBinding:
    prefix: --number
- id: model
  doc: 'Model for getting a new sequence: uniform, nussinov, basepairs, stacking (default:
    basepairs)'
  type: string
  inputBinding:
    prefix: --model
- id: energies
  doc: 'Target Energies for design. String of comma separated float values. (default:
    )'
  type: string
  inputBinding:
    prefix: --energies
- id: gc
  doc: 'Target GC content. (default: 0.5)'
  type: string
  inputBinding:
    prefix: --gc
- id: simple_tolerance
  doc: 'Tolerated relative deviation to target energies in the simple model. (default:
    0.2)'
  type: string
  inputBinding:
    prefix: --simple_tolerance
- id: gc_tolerance
  doc: 'Tolerated relative deviation to target GC content. (default: 0.05)'
  type: string
  inputBinding:
    prefix: --gctolerance
- id: tolerance
  doc: 'Turner energy tolerance to the target energies (default: 1 kcal/mol, turn
    off by values <0) (default: 1)'
  type: string
  inputBinding:
    prefix: --tolerance
- id: csv_output
  doc: 'Output csv format (with additional information) (default: False)'
  type: boolean
  inputBinding:
    prefix: --csv_output
- id: debug
  doc: 'Show debug information of library (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- design-energyshift.py
