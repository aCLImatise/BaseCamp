class: CommandLineTool
id: SingleCellRnaSeqMetricsCollector.cwl
inputs:
- id: in_default_g
  doc: (default 4g)
  type: long
  inputBinding:
    prefix: -m
- id: in_final_command_line
  doc: final command line before executing
  type: string
  inputBinding:
    prefix: -v
- id: in_displays_options_specific
  doc: "Displays options specific to this tool AND options common to all Picard command\
    \ line\ntools."
  type: boolean
  inputBinding:
    prefix: -H
- id: in_null_dot
  doc: STRAND_SPECIFICITY=StrandSpecificity
  type: string
  inputBinding:
    position: 0
- id: in_cell_bc_file
  doc: CELL_BC_FILE=File             Override NUM_CORE_BARCODES, and process reads
    that have the cell barcodes in this file
  type: string
  inputBinding:
    position: 0
- id: in_instead_dot
  doc: When supplied, output is ordered to match the input barcode ordering. The file
  type: string
  inputBinding:
    position: 1
- id: in_num_core_barcodes
  doc: 'READ_MQ=Integer               The map quality of the read to be included for
    determining which cells will be measured. '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SingleCellRnaSeqMetricsCollector
