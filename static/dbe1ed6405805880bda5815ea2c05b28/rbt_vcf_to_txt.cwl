class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rbt_vcf_to_txt.cwl
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
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- rbt
- vcf-to-txt
