class: CommandLineTool
id: _splitter.cwl
inputs:
- id: in_size
  doc: integer    [10000] Size to split at (Integer 1 or more)
  type: boolean
  inputBinding:
    prefix: -size
- id: in_overlap
  doc: "integer    [0] Overlap between split sequences (Integer\n0 or more)"
  type: boolean
  inputBinding:
    prefix: -overlap
- id: in_feature
  doc: boolean    [N] Use feature information
  type: boolean
  inputBinding:
    prefix: -feature
- id: in_add_overlap
  doc: boolean    [N] Include overlap in output sequence size
  type: boolean
  inputBinding:
    prefix: -addoverlap
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _splitter
