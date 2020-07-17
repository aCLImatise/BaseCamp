class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/clstr_size_histogram.pl.cwl
inputs:
- id: bin
  doc: ''
  type: string
  inputBinding:
    prefix: -bin
- id: cl_str_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- clstr_size_histogram.pl
