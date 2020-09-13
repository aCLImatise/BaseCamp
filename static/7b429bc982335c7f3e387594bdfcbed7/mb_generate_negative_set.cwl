class: CommandLineTool
id: ../../../mb_generate_negative_set.cwl
inputs:
- id: in_number
  doc: set number or random drawings
  type: long
  inputBinding:
    prefix: --number
- id: in_width
  doc: set number or nt +/- selected position
  type: long
  inputBinding:
    prefix: --width
- id: in_verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-generate-negative-set
