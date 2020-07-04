class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/stoch_genDimerRates.cwl
inputs:
- id: mfe_sequence_used
  doc: ':  MFE of the sequence. Used to prevent numerical problems when computing
    the partition functions [0]'
  type: string
  inputBinding:
    prefix: -m
- id: folding_temperature_deg
  doc: ':  Folding temperature in deg Celsius [37]'
  type: string
  inputBinding:
    prefix: -T
- id: bonus_energy_binding
  doc: ':  Bonus energy for binding the ligand (>=0, in kcal/mol) [9.59]'
  type: string
  inputBinding:
    prefix: -B
- id: exploration_threshold_unconstrained
  doc: ':  Exploration threshold in unconstrained landscape. Used to skip hashing
    of constrained structures below threshold [infinity]'
  type: string
  inputBinding:
    prefix: -E
- id: _be_verbose
  doc: ':     Be verbose'
  type: boolean
  inputBinding:
    prefix: -v
- id: params
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: monomer_dots_b_map
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: dimer_dots_b_map
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- stoch_genDimerRates
