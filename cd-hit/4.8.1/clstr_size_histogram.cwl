class: CommandLineTool
id: clstr_size_histogram.pl.cwl
inputs:
- id: cl_str_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bin
  doc: ''
  type: string
  inputBinding:
    prefix: -bin
outputs: []
cwlVersion: v1.1
baseCommand:
- clstr_size_histogram.pl
