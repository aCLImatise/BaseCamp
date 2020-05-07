class: CommandLineTool
id: mercy.cwl
inputs:
- id: opts
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: af
  doc: '| -tf        fragcounts'
  type: boolean
  inputBinding:
    prefix: -af
- id: ac
  doc: '| -dc | -co  contigcounts '
  type: boolean
  inputBinding:
    prefix: -ac
outputs: []
cwlVersion: v1.1
baseCommand:
- mercy
