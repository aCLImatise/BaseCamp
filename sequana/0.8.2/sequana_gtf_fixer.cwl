class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sequana_gtf_fixer.cwl
inputs:
- id: input_gtf_file
  doc: input GTF file
  type: string
  inputBinding:
    prefix: --input
- id: output_gtf_file
  doc: output GTF file
  type: string
  inputBinding:
    prefix: --output
- id: gtf_fixer
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_3
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: n
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: var_5
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- sequana_gtf_fixer
