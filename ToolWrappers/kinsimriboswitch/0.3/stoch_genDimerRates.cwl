class: CommandLineTool
id: stoch_genDimerRates.cwl
inputs:
- id: in_mfe_sequence_used
  doc: ":  MFE of the sequence. Used to prevent numerical problems\nwhen computing\
    \ the partition functions [0]"
  type: long?
  inputBinding:
    prefix: -m
- id: in_folding_temperature_celsius
  doc: ':  Folding temperature in deg Celsius [37]'
  type: long?
  inputBinding:
    prefix: -T
- id: in_bonus_energy_binding
  doc: ':  Bonus energy for binding the ligand (>=0, in kcal/mol) [9.59]'
  type: double?
  inputBinding:
    prefix: -B
- id: in_exploration_threshold_unconstrained
  doc: ":  Exploration threshold in unconstrained landscape. Used to skip\nhashing\
    \ of constrained structures below threshold [infinity]"
  type: string?
  inputBinding:
    prefix: -E
- id: in__be_verbose
  doc: ':     Be verbose'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_params
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_monomer_dots_b_map
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dimer_dots_b_map
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- stoch_genDimerRates
