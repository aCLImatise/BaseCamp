class: CommandLineTool
id: ../../../bracken_build_KMER_LEN.cwl
inputs:
- id: in_database
  doc: '= '
  type: string
  inputBinding:
    position: 0
- id: in_threads
  doc: = 1
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bracken-build
- KMER_LEN
