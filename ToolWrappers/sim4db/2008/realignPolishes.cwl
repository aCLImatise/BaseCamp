class: CommandLineTool
id: realignPolishes.cwl
inputs:
- id: in_actually_work_just
  doc: ": Don't actually do the work, just count the statistics"
  type: boolean
  inputBinding:
    prefix: -q
- id: in_g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: in_e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: in_m
  doc: ''
  type: string
  inputBinding:
    prefix: -M
- id: in_merge
  doc: ''
  type: string
  inputBinding:
    prefix: -merge
- id: in_polishes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_somewhere
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- realignPolishes
