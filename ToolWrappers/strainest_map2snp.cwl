class: CommandLineTool
id: strainest_map2snp.cwl
inputs:
- id: in_reference
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_mapped
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output
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
- map2snp
