class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pslSort.cwl
inputs:
- id: no_head
  doc: Do not write psl header.
  type: boolean
  inputBinding:
    prefix: -nohead
- id: verbose
  doc: Set verbosity level, higher for more output. Default is 1.
  type: string
  inputBinding:
    prefix: -verbose
- id: dirs
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: one_vertical_line_two
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: outfile
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: tempdir
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_dir
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- pslSort
