class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dnaplotter.cwl
inputs:
- id: read_template_file
  doc: Read a template file
  type: File
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- dnaplotter
