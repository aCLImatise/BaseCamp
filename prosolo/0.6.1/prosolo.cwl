class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/prosolo.cwl
inputs:
- id: provide_verbose_output
  doc: Provide verbose output.
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- prosolo
