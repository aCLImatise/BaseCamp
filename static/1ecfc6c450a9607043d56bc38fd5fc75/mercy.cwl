class: CommandLineTool
id: mercy.cwl
inputs:
- id: in_af
  doc: '| -tf        fragcounts'
  type: boolean
  inputBinding:
    prefix: -af
- id: in_ac
  doc: '| -dc | -co  contigcounts'
  type: boolean
  inputBinding:
    prefix: -ac
- id: in_dump
  doc: ''
  type: string
  inputBinding:
    prefix: -dump
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_opts
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mercy
