class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rgt_hint_plotting.cwl
inputs:
- id: organism
  doc: ''
  type: string
  inputBinding:
    prefix: --organism
- id: reads_file
  doc: ''
  type: File
  inputBinding:
    prefix: --reads-file
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-hint
- plotting
