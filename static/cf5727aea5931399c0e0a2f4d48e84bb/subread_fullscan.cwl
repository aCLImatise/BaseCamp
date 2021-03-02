class: CommandLineTool
id: subread_fullscan.cwl
inputs:
- id: in_base_name_index
  doc: Base name of the index.
  type: string?
  inputBinding:
    prefix: -i
- id: in_minimum_fraction_matched
  doc: The minimum fraction of matched bases in the read, 0.8 by default
  type: double?
  inputBinding:
    prefix: -m
- id: in_read_string
  doc: The read bases.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- subread-fullscan
