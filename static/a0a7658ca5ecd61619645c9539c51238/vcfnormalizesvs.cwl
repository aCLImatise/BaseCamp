class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vcfnormalizesvs.cwl
inputs:
- id: _reference_reffa
  doc: / --reference <ref.fa>   FASTA-format reference genome from which to pull SV
    sequences.
  type: boolean
  inputBinding:
    prefix: -r
- id: _insertions_insfa
  doc: / --insertions <ins.fa>   FASTA-format insertion sequences, with IDs matching
    the ALT allele tags in the vcf
  type: boolean
  inputBinding:
    prefix: -i
- id: var_dot_vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfnormalizesvs
