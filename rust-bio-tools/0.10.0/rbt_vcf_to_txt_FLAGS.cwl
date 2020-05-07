class: CommandLineTool
id: rbt_vcf_to_txt_FLAGS.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- rbt
- vcf-to-txt
- FLAGS
