class: CommandLineTool
id: igvtools.cwl
inputs:
- id: in_sort
  doc: 'sort an alignment file by start position. '
  type: string
  inputBinding:
    position: 0
- id: in_index
  doc: index an alignment file
  type: string
  inputBinding:
    position: 1
- id: in_to_tdf
  doc: convert an input file (cn, gct, wig) to tiled data format (tdf)
  type: string
  inputBinding:
    position: 2
- id: in_count
  doc: compute coverage density for an alignment file
  type: string
  inputBinding:
    position: 3
- id: in_format_exp
  doc: center, scale, and log2 normalize an expression file
  type: string
  inputBinding:
    position: 4
- id: in_gui
  doc: Start the gui
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- igvtools
