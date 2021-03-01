class: CommandLineTool
id: biosed.cwl
inputs:
- id: in_target_region
  doc: string     [N] Sequence section to match (Any string)
  type: boolean?
  inputBinding:
    prefix: -targetregion
- id: in_position
  doc: "integer    [0] Sequence position to match (Integer 0 or\nmore)"
  type: boolean?
  inputBinding:
    prefix: -position
- id: in_delete
  doc: toggle     [N] Delete the target sequence sections
  type: boolean?
  inputBinding:
    prefix: -delete
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- biosed
