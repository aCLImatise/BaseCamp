class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/BLASTN.py.cwl
inputs:
- id: blastn_path
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: query_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: results_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- BLASTN.py
