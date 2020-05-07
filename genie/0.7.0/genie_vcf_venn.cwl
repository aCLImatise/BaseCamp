class: CommandLineTool
id: genie_vcf_venn.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_path
  doc: VCF files (*require at 3 files)
  type: string
  inputBinding:
    prefix: --filepath
- id: primary
  doc: a primary VCF file (*require)
  type: string
  inputBinding:
    prefix: --primary
- id: sv_type
  doc: SVTYPE such as DEL, DUP, INV, INS and BND (*require, support only one type)
  type: string
  inputBinding:
    prefix: --svtype
outputs: []
cwlVersion: v1.1
baseCommand:
- genie
- vcf
- venn
