class: CommandLineTool
id: ../../../novoutil_tile.cwl
inputs:
- id: sets_read_default
  doc: Sets read length. Default 70.    -n 99     The maximum number of N's in a read.
    Default 30.    -s 9      The step size for tiled reads. Default 1.
  type: string
  inputBinding:
    prefix: -l
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: novo_index
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: chr_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- novoutil
- tile
