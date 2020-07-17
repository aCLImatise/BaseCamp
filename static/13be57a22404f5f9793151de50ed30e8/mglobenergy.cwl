class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mglobenergy.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- mglobenergy
