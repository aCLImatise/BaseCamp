class: CommandLineTool
id: valid_cells.cwl
inputs:
- id: out_dir
  doc: Path to the output directory
  type: string
  inputBinding:
    position: 0
- id: verbose
  doc: Verbose execution.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- valid_cells
