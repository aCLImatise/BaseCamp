class: CommandLineTool
id: ../../../genePredCheck.cwl
inputs:
- id: in_db
  doc: "- If specified, then this database is used to\nget chromosome sizes, and perhaps\
    \ the table to check."
  type: string
  inputBinding:
    prefix: -db
- id: in_chrom_sizes
  doc: "- use chrom sizes from tab separated\nfile (name,size) instead of from chromInfo\
    \ table in specified db.\n"
  type: File
  inputBinding:
    prefix: -chromSizes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- genePredCheck
