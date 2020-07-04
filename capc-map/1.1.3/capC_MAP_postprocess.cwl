class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/capC_MAP_postprocess.cwl
inputs:
- id: configuration_file
  doc: configuration file
  type: string
  inputBinding:
    prefix: -c
- id: directory_created_output
  doc: directory to be created for output
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- capC-MAP
- postprocess
