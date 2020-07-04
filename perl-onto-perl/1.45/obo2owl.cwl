class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/obo2owl.pl.cwl
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
- id: obo_owl_url
  doc: obo in owl url
  type: boolean
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- obo2owl.pl
