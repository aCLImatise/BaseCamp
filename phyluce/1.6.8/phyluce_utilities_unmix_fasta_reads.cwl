class: CommandLineTool
id: ../../../phyluce_utilities_unmix_fasta_reads.cwl
inputs:
- id: in_out_r_one
  doc: ''
  type: long
  inputBinding:
    prefix: --out-r1
- id: in_out_r_singleton
  doc: ''
  type: string
  inputBinding:
    prefix: --out-r-singleton
- id: in_mixed_reads
  doc: "The file containing mixed fasta reads with \x01 and \x02\ndesignators for\
    \ reads."
  type: File
  inputBinding:
    prefix: --mixed-reads
- id: in_singleton_reads
  doc: The file containing singleton fasta reads.
  type: File
  inputBinding:
    prefix: --singleton-reads
- id: in_verbosity
  doc: The logging level to use.
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: The path to a directory to hold logs.
  type: File
  inputBinding:
    prefix: --log-path
- id: in_new_style
  doc: ''
  type: boolean
  inputBinding:
    prefix: --new-style
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_utilities_unmix_fasta_reads
