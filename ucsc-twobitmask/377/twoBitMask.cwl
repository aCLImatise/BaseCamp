class: CommandLineTool
id: twoBitMask.cwl
inputs:
- id: input_2bit
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mask_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_2bit
  doc: ''
  type: string
  inputBinding:
    position: 2
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
outputs: []
cwlVersion: v1.1
baseCommand:
- twoBitMask
