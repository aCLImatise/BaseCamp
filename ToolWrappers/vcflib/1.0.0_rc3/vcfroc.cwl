class: CommandLineTool
id: vcfroc.cwl
inputs:
- id: in_truth_vcf
  doc: use this VCF as ground truth for ROC generation
  type: File?
  inputBinding:
    prefix: --truth-vcf
- id: in_window_size
  doc: compare records up to this many bp away (default 30)
  type: long?
  inputBinding:
    prefix: --window-size
- id: in_complex
  doc: directly compare complex alleles, don't parse into primitives
  type: boolean?
  inputBinding:
    prefix: --complex
- id: in_reference
  doc: FASTA reference file
  type: File?
  inputBinding:
    prefix: --reference
- id: in_vcf_file
  doc: ''
  type: File?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vcfroc
