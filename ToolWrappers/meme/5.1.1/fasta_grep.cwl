class: CommandLineTool
id: fasta_grep.cwl
inputs:
- id: in_copyright
  doc: (2014) The Regents of the University of California.
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
- fasta-grep
