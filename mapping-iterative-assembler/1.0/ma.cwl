class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ma.cwl
inputs:
- id: format_output_pipe
  doc: format 6 output -> don't pipe this output to file!
  type: string
  inputBinding:
    prefix: -C
outputs: []
cwlVersion: v1.1
baseCommand:
- ma
