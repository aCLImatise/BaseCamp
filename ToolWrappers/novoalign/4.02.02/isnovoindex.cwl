class: CommandLineTool
id: isnovoindex.cwl
inputs:
- id: in_filename_valid_novoindex
  doc: "filename is not a valid novoindex\n0 is a nucleotide space index\n1 is a bisulphite\
    \ nucleotide index\n2 is a colour space index\n"
  type: long?
  inputBinding:
    prefix: '-1'
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- isnovoindex
