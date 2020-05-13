class: CommandLineTool
id: obiaddtaxids.cwl
inputs:
- id: if
  doc: match is found, the sequence record is annotated with the corresponding *taxid*.
  type: string
  inputBinding:
    prefix: '- If'
- id: otherwise
  doc: sequence record is stored in the ``unidentified.fasta`` file.
  type: string
  inputBinding:
    prefix: '- Otherwise'
- id: database
  doc: ecoPCR taxonomy Database name
  type: File
  inputBinding:
    prefix: --database
- id: taxonomy_dump
  doc: NCBI Taxonomy dump repository name
  type: File
  inputBinding:
    prefix: --taxonomy-dump
outputs: []
cwlVersion: v1.1
baseCommand:
- obiaddtaxids
