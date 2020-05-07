class: CommandLineTool
id: hgSpeciesRna.cwl
inputs:
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genus
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: species
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_fa
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: est
  doc: '- If set will get ESTs rather than mRNAs'
  type: boolean
  inputBinding:
    prefix: -est
- id: filter
  doc: accessions listed in file
  type: File
  inputBinding:
    prefix: -filter
outputs: []
cwlVersion: v1.1
baseCommand:
- hgSpeciesRna
