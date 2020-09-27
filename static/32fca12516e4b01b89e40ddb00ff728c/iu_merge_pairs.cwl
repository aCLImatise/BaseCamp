class: CommandLineTool
id: iu_merge_pairs.cwl
inputs:
- id: in_min_overlap_size
  doc: ''
  type: long
  inputBinding:
    prefix: --min-overlap-size
- id: in_o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_o)
cwlVersion: v1.1
baseCommand:
- iu-merge-pairs
