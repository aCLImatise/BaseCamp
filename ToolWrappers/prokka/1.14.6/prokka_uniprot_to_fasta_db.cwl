class: CommandLineTool
id: prokka_uniprot_to_fasta_db.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- prokka-uniprot_to_fasta_db
