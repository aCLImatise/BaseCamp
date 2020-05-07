class: CommandLineTool
id: filterGenesOut_mRNAname.pl.cwl
inputs:
- id: filter_genes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: name_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: dbfile
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- filterGenesOut_mRNAname.pl
