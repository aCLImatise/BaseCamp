class: CommandLineTool
id: rblist.cwl
inputs:
- id: inputs_d_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: outputs_d_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: i
  doc: <InputSDFile> - input ligand SD file
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: <OutputSDFile> - output SD file with descriptors (default=no output)
  type: boolean
  inputBinding:
    prefix: -o
- id: proton_ate
  doc: neutral amines, guanidines, imidazoles (default=disabled)
  type: string
  inputBinding:
    prefix: '- protonate'
- id: de_proton_ate
  doc: carboxylic, sulphur and phosphorous acid groups (default=disabled)
  type: string
  inputBinding:
    prefix: '- deprotonate'
- id: read
  doc: hydrogens present (default=polar hydrogens only)
  type: string
  inputBinding:
    prefix: '- read'
- id: rotate
  doc: 2ndry amides to trans (default=leave alone)
  type: string
  inputBinding:
    prefix: '- rotate'
- id: verbose
  doc: of ligand atoms and rotable bonds (default = compact table format)
  type: string
  inputBinding:
    prefix: '- verbose'
outputs: []
cwlVersion: v1.1
baseCommand:
- rblist
