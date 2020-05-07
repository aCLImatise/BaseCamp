class: CommandLineTool
id: vcf_consensus.cwl
inputs:
- id: haplotype
  doc: Apply only variants for the given haplotype (1,2)
  type: long
  inputBinding:
    prefix: --haplotype
- id: iupac_codes
  doc: Apply variants in the form of IUPAC ambiguity codes
  type: boolean
  inputBinding:
    prefix: --iupac-codes
- id: sample
  doc: If not given, all variants are applied
  type: string
  inputBinding:
    prefix: --sample
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-consensus
