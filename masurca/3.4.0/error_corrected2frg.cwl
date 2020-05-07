class: CommandLineTool
id: error_corrected2frg.cwl
inputs:
- id: length_min
  doc: Minimum length of a read (64)
  type: string
  inputBinding:
    prefix: --length-min
outputs: []
cwlVersion: v1.1
baseCommand:
- error_corrected2frg
