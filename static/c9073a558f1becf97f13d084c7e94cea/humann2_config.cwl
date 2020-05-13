class: CommandLineTool
id: humann2_config.cwl
inputs:
- id: print
  doc: print the configuration
  type: boolean
  inputBinding:
    prefix: --print
- id: update
  doc: '<name> <value> update the section : name to the value provided'
  type: string
  inputBinding:
    prefix: --update
outputs: []
cwlVersion: v1.1
baseCommand:
- humann2_config
