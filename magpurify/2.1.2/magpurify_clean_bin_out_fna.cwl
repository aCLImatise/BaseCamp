class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/magpurify_clean_bin_out_fna.cwl
inputs:
- id: mag_purify
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: clean_bin
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fna
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: out_fna
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- magpurify
- clean-bin
- out_fna
