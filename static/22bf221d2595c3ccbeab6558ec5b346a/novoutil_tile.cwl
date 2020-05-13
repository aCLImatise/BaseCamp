class: CommandLineTool
id: novoutil_tile.cwl
inputs:
- id: l
  doc: 99     Sets read length. Default 70.    -n 99     The maximum number of N's
    in a read. Default 30.    -s 9      The step size for tiled reads. Default 1.
  type: boolean
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- novoutil
- tile
