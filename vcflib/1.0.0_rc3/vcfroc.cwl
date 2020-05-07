class: CommandLineTool
id: vcfroc.cwl
inputs:
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: truth_vcf
  doc: use this VCF as ground truth for ROC generation
  type: File
  inputBinding:
    prefix: --truth-vcf
- id: window_size
  doc: compare records up to this many bp away (default 30)
  type: string
  inputBinding:
    prefix: --window-size
- id: complex
  doc: directly compare complex alleles, don't parse into primitives
  type: boolean
  inputBinding:
    prefix: --complex
- id: reference
  doc: FASTA reference file
  type: File
  inputBinding:
    prefix: --reference
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfroc
