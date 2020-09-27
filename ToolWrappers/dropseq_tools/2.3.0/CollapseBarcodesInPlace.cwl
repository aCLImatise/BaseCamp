class: CommandLineTool
id: CollapseBarcodesInPlace.cwl
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
- id: in_value_dot
  doc: MIN_NUM_READS_CORE=Integer    Number of reads a barcode would need to have
    in order to have other barcodes get merged
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- CollapseBarcodesInPlace
