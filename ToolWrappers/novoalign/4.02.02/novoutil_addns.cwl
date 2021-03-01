class: CommandLineTool
id: novoutil_addns.cwl
inputs:
- id: in_number_ns_add
  doc: 99      Number of Ns to add. default 50.
  type: boolean?
  inputBinding:
    prefix: -n
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
hints: []
cwlVersion: v1.1
baseCommand:
- novoutil
- addns
