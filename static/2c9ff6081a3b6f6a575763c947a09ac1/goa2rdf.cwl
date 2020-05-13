class: CommandLineTool
id: goa2rdf.pl.cwl
inputs:
- id: f
  doc: GOA input file
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- goa2rdf.pl
