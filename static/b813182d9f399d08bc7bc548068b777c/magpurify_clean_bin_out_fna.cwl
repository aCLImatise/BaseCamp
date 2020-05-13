class: CommandLineTool
id: magpurify_clean_bin_out_fna.cwl
inputs:
- id: fna
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_fna
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- magpurify
- clean-bin
- out_fna
