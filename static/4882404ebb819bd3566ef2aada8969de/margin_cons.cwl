class: CommandLineTool
id: margin_cons.cwl
inputs:
- id: reference
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: bam_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: depth
  doc: ''
  type: string
  inputBinding:
    prefix: --depth
outputs: []
cwlVersion: v1.1
baseCommand:
- margin_cons
