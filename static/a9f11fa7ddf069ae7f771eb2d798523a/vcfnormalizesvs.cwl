class: CommandLineTool
id: vcfnormalizesvs.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_vcf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: r
  doc: / --reference <ref.fa>   FASTA-format reference genome from which to pull SV
    sequences.
  type: boolean
  inputBinding:
    prefix: -r
- id: i
  doc: / --insertions <ins.fa>   FASTA-format insertion sequences, with IDs matching
    the ALT allele tags in the vcf
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfnormalizesvs
