class: CommandLineTool
id: rbt_vcf_to_txt_OPTIONS.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- rbt
- vcf-to-txt
- OPTIONS
