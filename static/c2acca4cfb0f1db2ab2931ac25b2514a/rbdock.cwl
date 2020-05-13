class: CommandLineTool
id: rbdock.cwl
inputs:
- id: input
  doc: input ligand SD file
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: output file name(s) prefix
  type: string
  inputBinding:
    prefix: --output
- id: receptor_param
  doc: receptor parameter file
  type: string
  inputBinding:
    prefix: --receptor-param
- id: docking_param
  doc: docking protocol parameter file
  type: string
  inputBinding:
    prefix: --docking-param
- id: number
  doc: 'number of runs per ligand (0 = unlimited) (default: 0)'
  type: string
  inputBinding:
    prefix: --number
- id: proton_ate
  doc: protonate all neutral amines, guanidines, imidazoles
  type: boolean
  inputBinding:
    prefix: --protonate
- id: de_proton_ate
  doc: deprotonate all carboxylic, sulphur and phosphorous acid groups
  type: boolean
  inputBinding:
    prefix: --deprotonate
- id: all_hydrogens
  doc: read all hydrogens present instead of only polar hydrogens
  type: boolean
  inputBinding:
    prefix: --all-hydrogens
- id: threshold
  doc: score threshold
  type: string
  inputBinding:
    prefix: --threshold
- id: continue
  doc: continue if score threshold is met instead of terminating ligand
  type: boolean
  inputBinding:
    prefix: --continue
- id: filter
  doc: filter file name
  type: string
  inputBinding:
    prefix: --filter
- id: trace
  doc: 'controls output level for debugging (0 = minimal, >0 = more verbose) (default:
    0)'
  type: string
  inputBinding:
    prefix: --trace
- id: seed
  doc: random number seed to use instead of std::random_device
  type: string
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- rbdock
