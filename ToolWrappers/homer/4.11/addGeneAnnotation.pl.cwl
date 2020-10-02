class: CommandLineTool
id: addGeneAnnotation.pl.cwl
inputs:
- id: in_data_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_organism
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- addGeneAnnotation.pl
