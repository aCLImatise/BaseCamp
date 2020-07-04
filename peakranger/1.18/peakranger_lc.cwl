class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/peakranger_lc.cwl
inputs:
- id: arg_data_file
  doc: '[ --data ] arg      the data file'
  type: boolean
  inputBinding:
    prefix: -d
- id: verbose
  doc: show progress when possible
  type: boolean
  inputBinding:
    prefix: --verbose
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- peakranger
- lc
