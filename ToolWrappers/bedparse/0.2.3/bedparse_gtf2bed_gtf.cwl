class: CommandLineTool
id: bedparse_gtf2bed_gtf.cwl
inputs:
- id: in_extrafields
  doc: ''
  type: string
  inputBinding:
    prefix: --extraFields
- id: in_bed_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_gtf_two_bed
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedparse
- gtf2bed
- gtf
