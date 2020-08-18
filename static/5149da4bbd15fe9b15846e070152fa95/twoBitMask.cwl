class: CommandLineTool
id: ../../../twoBitMask.cwl
inputs:
- id: add
  doc: Don't remove pre-existing masking before applying maskFile.
  type: boolean
  inputBinding:
    prefix: -add
- id: type
  doc: =.XXX   Type of maskFile is XXX (bed or out).
  type: boolean
  inputBinding:
    prefix: -type
- id: input_dot_two_bit
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mask_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_dot_two_bit
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- twoBitMask
