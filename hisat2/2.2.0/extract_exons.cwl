class: CommandLineTool
id: extract_exons.py_gtf_file.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_exons.py
- gtf_file
