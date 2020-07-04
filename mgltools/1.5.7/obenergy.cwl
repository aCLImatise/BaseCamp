class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/obenergy.cwl
inputs:
- id: verbose_print_interactions
  doc: 'verbose: print out indivual energy interactions'
  type: boolean
  inputBinding:
    prefix: -v
- id: ff
  doc: 'select a forcefield available forcefields:'
  type: string
  inputBinding:
    prefix: -ff
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- obenergy
