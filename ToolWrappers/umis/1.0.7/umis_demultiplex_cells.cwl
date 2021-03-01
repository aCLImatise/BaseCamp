class: CommandLineTool
id: umis_demultiplex_cells.cwl
inputs:
- id: in_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- umis
- demultiplex_cells
