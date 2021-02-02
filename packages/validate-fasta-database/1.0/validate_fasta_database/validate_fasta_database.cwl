class: CommandLineTool
id: validate_fasta_database.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- validate-fasta-database
