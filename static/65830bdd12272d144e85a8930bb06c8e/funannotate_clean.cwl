class: CommandLineTool
id: funannotate_clean.cwl
inputs:
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: Multi-fasta genome file (Required)
  type: boolean
  inputBinding:
    prefix: --input
- id: out
  doc: Cleaned multi-fasta output file (Required)
  type: boolean
  inputBinding:
    prefix: --out
- id: p_ident
  doc: Percent identity of overlap. Default = 95
  type: boolean
  inputBinding:
    prefix: --pident
- id: cov
  doc: Percent coverage of overlap. Default = 95
  type: boolean
  inputBinding:
    prefix: --cov
- id: min_len
  doc: Minimum length of contig to keep. Default = 500
  type: boolean
  inputBinding:
    prefix: --minlen
- id: exhaustive
  doc: Test every contig. Default is to stop at N50 value.
  type: boolean
  inputBinding:
    prefix: --exhaustive
outputs: []
cwlVersion: v1.1
baseCommand:
- funannotate
- clean
