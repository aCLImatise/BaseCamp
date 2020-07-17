class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/obo2xml.pl.cwl
inputs:
- id: obo_input_file
  doc: OBO input file
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- obo2xml.pl
