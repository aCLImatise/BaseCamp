class: CommandLineTool
id: fasta_unique_names.cwl
inputs:
- id: in_copyright
  doc: (1999) The Regents of the University of California.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fasta-unique-names
