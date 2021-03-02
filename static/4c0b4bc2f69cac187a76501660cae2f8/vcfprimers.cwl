class: CommandLineTool
id: vcfprimers.cwl
inputs:
- id: in_fast_a_reference
  doc: FASTA reference file to use to obtain primer sequences
  type: boolean?
  inputBinding:
    prefix: --fasta-reference
- id: in_primer_length
  doc: The length of the primer sequences on each side of the variant
  type: boolean?
  inputBinding:
    prefix: --primer-length
- id: in_vcf_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vcfprimers
