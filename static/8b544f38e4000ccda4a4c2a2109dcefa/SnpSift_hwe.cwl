class: CommandLineTool
id: SnpSift_hwe.cwl
inputs:
- id: q
  doc: ': Be quite'
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: ': Be verbose'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- SnpSift
- hwe
