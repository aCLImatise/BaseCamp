class: CommandLineTool
id: vcfentropy.cwl
inputs:
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_reference
  doc: FASTA reference file to use to obtain flanking sequences
  type: boolean
  inputBinding:
    prefix: --fasta-reference
- id: window_size
  doc: Size of the window over which to calculate entropy
  type: boolean
  inputBinding:
    prefix: --window-size
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfentropy
