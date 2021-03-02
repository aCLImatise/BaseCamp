class: CommandLineTool
id: merge_partitions.py.cwl
inputs:
- id: in_info
  doc: print citation information
  type: boolean?
  inputBinding:
    prefix: --info
- id: in_k_size
  doc: 'k-mer size (default: 32) (default: 32)'
  type: long?
  inputBinding:
    prefix: --ksize
- id: in_keep_subsets
  doc: "Keep individual subsets (default: False) (default:\nTrue)"
  type: boolean?
  inputBinding:
    prefix: --keep-subsets
- id: in_force
  doc: 'Overwrite output file if it exists (default: False)'
  type: File?
  inputBinding:
    prefix: --force
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force
  doc: 'Overwrite output file if it exists (default: False)'
  type: File?
  outputBinding:
    glob: $(inputs.in_force)
hints: []
cwlVersion: v1.1
baseCommand:
- merge-partitions.py
