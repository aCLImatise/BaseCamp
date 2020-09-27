class: CommandLineTool
id: strainest_snpdist.cwl
inputs:
- id: in_snp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dist
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_hist
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- strainest
- snpdist
