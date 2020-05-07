class: CommandLineTool
id: obenergy.cwl
inputs:
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 0
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
- obenergy
