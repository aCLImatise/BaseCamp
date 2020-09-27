class: CommandLineTool
id: vcfnormalizesvs.cwl
inputs:
- id: in__reference_reffa
  doc: / --reference <ref.fa>   FASTA-format reference genome from which to pull SV
    sequences.
  type: boolean
  inputBinding:
    prefix: -r
- id: in__insertions_insfa
  doc: / --insertions <ins.fa>   FASTA-format insertion sequences, with IDs matching
    the ALT allele tags in the vcf
  type: boolean
  inputBinding:
    prefix: -i
- id: in_var_dot_vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vcfnormalizesvs
