class: CommandLineTool
id: ../../../rbox.cwl
inputs:
- id: in_r_box
  doc: various point distributions.  Default is random in cube.
  type: string
  inputBinding:
    prefix: -rbox-
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rbox
