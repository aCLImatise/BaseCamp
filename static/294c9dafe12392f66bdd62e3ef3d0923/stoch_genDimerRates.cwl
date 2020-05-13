class: CommandLineTool
id: stoch_genDimerRates.cwl
inputs:
- id: params
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: monomers_b_map
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: dimers_b_map
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: m
  doc: ':  MFE of the sequence. Used to prevent numerical problems when computing
    the partition functions [0]'
  type: string
  inputBinding:
    prefix: -m
- id: t
  doc: ':  Folding temperature in deg Celsius [37]'
  type: string
  inputBinding:
    prefix: -T
- id: b
  doc: ':  Bonus energy for binding the ligand (>=0, in kcal/mol) [9.59]'
  type: string
  inputBinding:
    prefix: -B
- id: e
  doc: ':  Exploration threshold in unconstrained landscape. Used to skip hashing
    of constrained structures below threshold [infinity]'
  type: string
  inputBinding:
    prefix: -E
- id: v
  doc: ':     Be verbose'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- stoch_genDimerRates
