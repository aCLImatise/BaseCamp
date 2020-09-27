class: CommandLineTool
id: pepcoil.cwl
inputs:
- id: in_window
  doc: integer    [28] Window size (Integer from 7 to 28)
  type: boolean
  inputBinding:
    prefix: -window
- id: in_frame
  doc: boolean    [Yes if -coil is true] Show coil frameshifts
  type: boolean
  inputBinding:
    prefix: -frame
- id: in_other
  doc: boolean    [N] Report non coiled coil regions
  type: boolean
  inputBinding:
    prefix: -other
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pepcoil
