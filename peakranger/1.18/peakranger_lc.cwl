class: CommandLineTool
id: peakranger_lc.cwl
inputs:
- id: d
  doc: '[ --data ] arg      the data file'
  type: boolean
  inputBinding:
    prefix: -d
- id: verbose
  doc: show progress when possible
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- peakranger
- lc
