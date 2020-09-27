class: CommandLineTool
id: hgSpeciesRna.cwl
inputs:
- id: in_est
  doc: '- If set will get ESTs rather than mRNAs'
  type: boolean
  inputBinding:
    prefix: -est
- id: in_filter
  doc: '- only read accessions listed in file'
  type: File
  inputBinding:
    prefix: -filter
- id: in_database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_genus
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_species
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hgSpeciesRna
