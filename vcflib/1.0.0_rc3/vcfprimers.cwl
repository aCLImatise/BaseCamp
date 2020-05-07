class: CommandLineTool
id: vcfprimers.cwl
inputs:
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_reference
  doc: FASTA reference file to use to obtain primer sequences
  type: boolean
  inputBinding:
    prefix: --fasta-reference
- id: primer_length
  doc: The length of the primer sequences on each side of the variant
  type: boolean
  inputBinding:
    prefix: --primer-length
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfprimers
