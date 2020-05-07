class: CommandLineTool
id: obo2owl.pl.cwl
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
- id: w
  doc: obo in owl url
  type: boolean
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- obo2owl.pl
