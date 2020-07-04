class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/agat_sq_split.pl.cwl
inputs:
- id: output
  doc: 'STRING: Output file. If no output file is specified, the output will be written
    to STDOUT. The result is in tabulate format.'
  type: string
  inputBinding:
    prefix: --output
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sq_split.pl
