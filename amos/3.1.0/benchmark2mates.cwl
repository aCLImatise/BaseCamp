class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/benchmark2mates.cwl
inputs:
- id: prefix_resulting_mates
  doc: prefix for the resulting .mates file. (required)
  type: boolean
  inputBinding:
    prefix: -o
- id: generate_file_optional
  doc: generate Bambus <outprefix>.conf file (optional)
  type: boolean
  inputBinding:
    prefix: -C
outputs: []
cwlVersion: v1.1
baseCommand:
- benchmark2mates
