class: CommandLineTool
id: ../../../obo2rdf.pl.cwl
inputs:
- id: obo_input_file
  doc: OBO input file
  type: boolean
  inputBinding:
    prefix: -f
- id: url
  doc: URL
  type: boolean
  inputBinding:
    prefix: -u
- id: namespace
  doc: namespace
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- obo2rdf.pl
