class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/go2owl.pl.cwl
inputs:
- id: obo_input_file
  doc: OBO input file
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- go2owl.pl
