class: CommandLineTool
id: novoutil_fastaAddM5.cwl
inputs:
- id: in_in
  doc: "is the fasta files to be processed.\nInput files may be compressed with gzip\
    \ or bzip."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- novoutil
- fastaAddM5
