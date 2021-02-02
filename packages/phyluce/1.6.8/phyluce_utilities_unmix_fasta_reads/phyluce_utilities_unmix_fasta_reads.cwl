class: CommandLineTool
id: phyluce_utilities_unmix_fasta_reads.cwl
inputs:
- id: in_out_r_one
  doc: "--out-r-singleton OUT_R_SINGLETON\n[--verbosity {INFO,WARN,CRITICAL}]\n[--log-path\
    \ LOG_PATH] [--new-style]"
  type: File
  inputBinding:
    prefix: --out-r1
- id: in_mixed_reads
  doc: ''
  type: string
  inputBinding:
    prefix: --mixed-reads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_r_one
  doc: "--out-r-singleton OUT_R_SINGLETON\n[--verbosity {INFO,WARN,CRITICAL}]\n[--log-path\
    \ LOG_PATH] [--new-style]"
  type: File
  outputBinding:
    glob: $(inputs.in_out_r_one)
cwlVersion: v1.1
baseCommand:
- phyluce_utilities_unmix_fasta_reads
