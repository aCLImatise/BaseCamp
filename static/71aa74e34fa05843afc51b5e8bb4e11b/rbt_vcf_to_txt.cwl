class: CommandLineTool
id: rbt_vcf_to_txt.cwl
inputs:
- id: genotypes
  doc: Display genotypes.
  type: boolean
  inputBinding:
    prefix: --genotypes
- id: fmt
  doc: '...     Select FORMAT tags.'
  type: string
  inputBinding:
    prefix: --fmt
- id: info
  doc: '...    Select INFO tags.'
  type: string
  inputBinding:
    prefix: --info
outputs: []
cwlVersion: v1.1
baseCommand:
- rbt
- vcf-to-txt
