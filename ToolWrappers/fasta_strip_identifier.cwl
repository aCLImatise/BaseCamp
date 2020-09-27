class: CommandLineTool
id: fasta_strip_identifier.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fasta-strip-identifier
