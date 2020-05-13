class: CommandLineTool
id: merge_partitions.py.cwl
inputs:
- id: graph_base
  doc: basename for input and output files
  type: string
  inputBinding:
    position: 0
- id: info
  doc: print citation information
  type: boolean
  inputBinding:
    prefix: --info
- id: k_size
  doc: 'k-mer size (default: 32) (default: 32)'
  type: string
  inputBinding:
    prefix: --ksize
- id: keep_subsets
  doc: 'Keep individual subsets (default: False) (default: True)'
  type: boolean
  inputBinding:
    prefix: --keep-subsets
- id: force
  doc: 'Overwrite output file if it exists (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- merge-partitions.py
