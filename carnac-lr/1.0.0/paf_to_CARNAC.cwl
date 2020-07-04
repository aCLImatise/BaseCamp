class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/paf_to_CARNAC.py.cwl
inputs:
- id: file_dot_paf
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: reads_dot_fast_a_slash_q
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- paf_to_CARNAC.py
