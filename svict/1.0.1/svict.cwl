class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/svict.cwl
inputs:
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
- id: svc_it
  doc: -- Structural Variant in ctDNA Sequencing Data
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- svict
