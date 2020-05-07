class: CommandLineTool
id: obo2rdf.pl.cwl
inputs:
- id: f
  doc: OBO input file
  type: boolean
  inputBinding:
    prefix: -f
- id: u
  doc: URL
  type: boolean
  inputBinding:
    prefix: -u
- id: n
  doc: namespace
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- obo2rdf.pl
