class: CommandLineTool
id: hgvsToVcf.cwl
inputs:
- id: in_no_left_shift
  doc: Don't do the VCF-conventional left shifting of ambiguous placements
  type: boolean
  inputBinding:
    prefix: -noLeftShift
- id: in_db
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_dot_hgvs
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hgvsToVcf
