class: CommandLineTool
id: ssu_cmcalibrate_cmfile.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-cmcalibrate
- cmfile
