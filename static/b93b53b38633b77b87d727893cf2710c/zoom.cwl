class: CommandLineTool
id: zoom.cwl
inputs:
- id: in_root
  doc: root read (int)
  type: boolean?
  inputBinding:
    prefix: --root
- id: in_depth
  doc: neighborhood depth (int)
  type: boolean?
  inputBinding:
    prefix: --depth
- id: in_depot
  doc: depot path (string)
  type: boolean?
  inputBinding:
    prefix: --depot
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- zoom
