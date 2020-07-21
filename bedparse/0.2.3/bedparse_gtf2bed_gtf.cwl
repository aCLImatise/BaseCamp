class: CommandLineTool
id: ../../../bedparse_gtf2bed_gtf.cwl
inputs:
- id: extrafields
  doc: ''
  type: string
  inputBinding:
    prefix: --extraFields
- id: bed_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gtf_two_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bedparse
- gtf2bed
- gtf
