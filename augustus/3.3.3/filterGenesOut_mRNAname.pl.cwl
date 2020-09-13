class: CommandLineTool
id: ../../../filterGenesOut_mRNAname.pl.cwl
inputs:
- id: in_filter_genes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_name_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dbfile
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
- filterGenesOut_mRNAname.pl
