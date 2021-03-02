class: CommandLineTool
id: novoutil_tile.cwl
inputs:
- id: in_sets_read_default
  doc: Sets read length. Default 70.    -n 99     The maximum number of N's in a read.
    Default 30.    -s 9      The step size for tiled reads. Default 1.
  type: long?
  inputBinding:
    prefix: -l
- id: in_s
  doc: ''
  type: long?
  inputBinding:
    prefix: -s
- id: in_n
  doc: ''
  type: long?
  inputBinding:
    prefix: -n
- id: in_novo_index
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_chr_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- novoutil
- tile
