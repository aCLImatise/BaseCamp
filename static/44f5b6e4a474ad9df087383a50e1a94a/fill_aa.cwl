class: CommandLineTool
id: ../../../fill_aa.cwl
inputs:
- id: ancestral_allele
  doc: Prefix to ancestral allele chromosome files.
  type: string
  inputBinding:
    prefix: --ancestral-allele
- id: type
  doc: 'Variant types to process: all,indel,ref,snp. [all]'
  type: string
  inputBinding:
    prefix: --type
- id: in_dot_vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_vcf
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fill-aa
