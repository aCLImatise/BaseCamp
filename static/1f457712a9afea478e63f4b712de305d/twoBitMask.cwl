class: CommandLineTool
id: twoBitMask.cwl
inputs:
- id: in_add
  doc: Don't remove pre-existing masking before applying maskFile.
  type: boolean?
  inputBinding:
    prefix: -add
- id: in_type
  doc: =.XXX   Type of maskFile is XXX (bed or out).
  type: boolean?
  inputBinding:
    prefix: -type
- id: in_input_dot_two_bit
  doc: ''
  type: double
  inputBinding:
    position: 0
- id: in_mask_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- twoBitMask
