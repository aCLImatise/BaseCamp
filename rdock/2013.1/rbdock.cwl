class: CommandLineTool
id: rbdock.cwl
inputs:
- id: input
  doc: SD file
  type: string
  inputBinding:
    prefix: '- input'
- id: root
  doc: for output file(s)
  type: string
  inputBinding:
    prefix: '- root'
- id: receptor
  doc: 'file '
  type: string
  inputBinding:
    prefix: '- receptor'
- id: docking
  doc: parameter file
  type: string
  inputBinding:
    prefix: '- docking'
- id: number
  doc: runs/ligand (default=1)
  type: string
  inputBinding:
    prefix: '- number'
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
- id: score
  doc: OR filter file name
  type: string
  inputBinding:
    prefix: '- score'
- id: continue
  doc: score threshold is met (use with -t <targetScore>, default=terminate ligand)
  type: string
  inputBinding:
    prefix: '- continue'
- id: controls
  doc: level for debugging (0 = minimal, >0 = more verbose)
  type: string
  inputBinding:
    prefix: '- controls'
- id: random
  doc: seed (default=from sys clock)
  type: string
  inputBinding:
    prefix: '- random'
outputs: []
cwlVersion: v1.1
baseCommand:
- rbdock
