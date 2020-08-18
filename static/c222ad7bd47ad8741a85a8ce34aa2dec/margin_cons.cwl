class: CommandLineTool
id: ../../../margin_cons.cwl
inputs:
- id: depth
  doc: minimum depth to call a variant
  type: string
  inputBinding:
    prefix: --depth
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
outputs: []
cwlVersion: v1.1
baseCommand:
- margin_cons
