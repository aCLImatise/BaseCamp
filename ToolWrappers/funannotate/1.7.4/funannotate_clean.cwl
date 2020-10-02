class: CommandLineTool
id: funannotate_clean.cwl
inputs:
- id: in_input
  doc: Multi-fasta genome file (Required)
  type: boolean
  inputBinding:
    prefix: --input
- id: in_out
  doc: Cleaned multi-fasta output file (Required)
  type: File
  inputBinding:
    prefix: --out
- id: in_p_ident
  doc: Percent identity of overlap. Default = 95
  type: boolean
  inputBinding:
    prefix: --pident
- id: in_cov
  doc: Percent coverage of overlap. Default = 95
  type: boolean
  inputBinding:
    prefix: --cov
- id: in_min_len
  doc: Minimum length of contig to keep. Default = 500
  type: boolean
  inputBinding:
    prefix: --minlen
- id: in_exhaustive
  doc: Test every contig. Default is to stop at N50 value.
  type: boolean
  inputBinding:
    prefix: --exhaustive
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Cleaned multi-fasta output file (Required)
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- funannotate
- clean
