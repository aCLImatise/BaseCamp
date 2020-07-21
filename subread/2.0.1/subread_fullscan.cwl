class: CommandLineTool
id: ../../../subread_fullscan.cwl
inputs:
- id: base_name_index
  doc: Base name of the index.
  type: string
  inputBinding:
    prefix: -i
- id: minimum_fraction_matched
  doc: The minimum fraction of matched bases in the read, 0.8 by default
  type: double
  inputBinding:
    prefix: -m
- id: read_string
  doc: The read bases.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- subread-fullscan
