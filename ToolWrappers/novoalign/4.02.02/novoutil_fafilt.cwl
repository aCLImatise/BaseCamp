class: CommandLineTool
id: novoutil_fafilt.cwl
inputs:
- id: in_length_limit_default
  doc: 999     Length limit, default 150.
  type: boolean
  inputBinding:
    prefix: -l
- id: in_fast_a_files
  doc: "is one or more fasta files to be processed.\nInput files may be compressed\
    \ with gzip or bzip."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- novoutil
- fafilt
