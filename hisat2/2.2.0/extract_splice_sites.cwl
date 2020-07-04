class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/extract_splice_sites.py_gtf_file.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_splice_sites.py
- gtf_file
