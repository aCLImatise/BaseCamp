class: CommandLineTool
id: fill_aa.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_vcf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_vcf
  doc: ''
  type: string
  inputBinding:
    position: 2
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
outputs: []
cwlVersion: v1.1
baseCommand:
- fill-aa
