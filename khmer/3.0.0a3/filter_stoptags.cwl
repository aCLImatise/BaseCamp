class: CommandLineTool
id: filter_stoptags.py.cwl
inputs:
- id: info
  doc: print citation information
  type: boolean
  inputBinding:
    prefix: --info
- id: k_size
  doc: 'k-mer size (default: 32)'
  type: string
  inputBinding:
    prefix: --ksize
- id: force
  doc: 'Overwrite output file if it exists (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- filter-stoptags.py
