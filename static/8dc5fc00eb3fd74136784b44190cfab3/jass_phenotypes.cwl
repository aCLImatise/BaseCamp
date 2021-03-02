class: CommandLineTool
id: jass_phenotypes.cwl
inputs:
- id: in_jass
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- jass
- phenotypes
