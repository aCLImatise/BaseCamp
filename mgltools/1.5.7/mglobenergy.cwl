class: CommandLineTool
id: mglobenergy.cwl
inputs:
- id: ob_energy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: v
  doc: 'verbose: print out indivual energy interactions'
  type: boolean
  inputBinding:
    prefix: -v
- id: ff
  doc: 'select a forcefield available forcefields:'
  type: string
  inputBinding:
    prefix: -ff
outputs: []
cwlVersion: v1.1
baseCommand:
- mglobenergy
