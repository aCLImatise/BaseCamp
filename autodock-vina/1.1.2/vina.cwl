class: CommandLineTool
id: vina.cwl
inputs:
- id: receptor
  doc: rigid part of the receptor (PDBQT)
  type: string
  inputBinding:
    prefix: --receptor
- id: flex
  doc: flexible side chains, if any (PDBQT)
  type: string
  inputBinding:
    prefix: --flex
- id: ligand
  doc: ligand (PDBQT)
  type: string
  inputBinding:
    prefix: --ligand
- id: center_x
  doc: X coordinate of the center
  type: string
  inputBinding:
    prefix: --center_x
- id: center_y
  doc: Y coordinate of the center
  type: string
  inputBinding:
    prefix: --center_y
- id: center_z
  doc: Z coordinate of the center
  type: string
  inputBinding:
    prefix: --center_z
- id: size_x
  doc: size in the X dimension (Angstroms)
  type: string
  inputBinding:
    prefix: --size_x
- id: size_y
  doc: size in the Y dimension (Angstroms)
  type: string
  inputBinding:
    prefix: --size_y
- id: size_z
  doc: size in the Z dimension (Angstroms)
  type: string
  inputBinding:
    prefix: --size_z
- id: out
  doc: output models (PDBQT), the default is chosen based on  the ligand file name
  type: string
  inputBinding:
    prefix: --out
- id: log
  doc: optionally, write log file
  type: string
  inputBinding:
    prefix: --log
- id: cpu
  doc: the number of CPUs to use (the default is to try to detect the number of CPUs
    or, failing that, use 1)
  type: string
  inputBinding:
    prefix: --cpu
- id: seed
  doc: explicit random seed
  type: string
  inputBinding:
    prefix: --seed
- id: exhaustive_ness
  doc: '(=8) exhaustiveness of the global search (roughly  proportional to time):
    1+'
  type: string
  inputBinding:
    prefix: --exhaustiveness
- id: num_modes
  doc: (=9)      maximum number of binding modes to generate
  type: string
  inputBinding:
    prefix: --num_modes
- id: energy_range
  doc: (=3)   maximum energy difference between the best binding  mode and the worst
    one displayed (kcal/mol)
  type: string
  inputBinding:
    prefix: --energy_range
- id: config
  doc: the above options can be put here
  type: string
  inputBinding:
    prefix: --config
- id: help_advanced
  doc: display usage summary with advanced options
  type: boolean
  inputBinding:
    prefix: --help_advanced
outputs: []
cwlVersion: v1.1
baseCommand:
- vina
