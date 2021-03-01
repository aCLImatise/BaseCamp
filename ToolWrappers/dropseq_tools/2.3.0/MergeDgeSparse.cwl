class: CommandLineTool
id: MergeDgeSparse.cwl
inputs:
- id: in_default_g
  doc: (default 4g)
  type: long?
  inputBinding:
    prefix: -m
- id: in_final_command_line
  doc: final command line before executing
  type: string?
  inputBinding:
    prefix: -v
- id: in_std_help
  doc: "Displays options specific to this tool AND options common to all Picard command\
    \ line\ntools."
  type: boolean?
  inputBinding:
    prefix: --stdhelp
- id: in_cell_dot
  doc: 'At least one of RAW_DGE_OUTPUT_FILE and SCALED_DGE_OUTPUT_FILE must be set. '
  type: string
  inputBinding:
    position: 0
- id: in_null_dot
  doc: DISCARDED_CELLS_FILE=File     If set, write a list of cell barcodes that have
    been filtered by any of the filtering
  type: string
  inputBinding:
    position: 0
- id: in_mechanisms_dot
  doc: 'Default value: null. '
  type: string
  inputBinding:
    position: 1
- id: in_set_dot
  doc: "Default value: STRICT. This option can be set to 'null' to clear the default\
    \ value."
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
- MergeDgeSparse
