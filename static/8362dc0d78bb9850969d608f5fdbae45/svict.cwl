class: CommandLineTool
id: svict.cwl
inputs:
- id: svc_it
  doc: -- Structural Variant in ctDNA Sequencing Data
  type: string
  inputBinding:
    position: 0
- id: i
  doc: ''
  type: boolean
  inputBinding:
    prefix: -i
- id: r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- svict
