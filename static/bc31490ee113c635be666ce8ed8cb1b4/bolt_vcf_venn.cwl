class: CommandLineTool
id: bolt_vcf_venn.cwl
inputs:
- id: genie
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: vcf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: venn
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 3
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
- bolt
- vcf
- venn
