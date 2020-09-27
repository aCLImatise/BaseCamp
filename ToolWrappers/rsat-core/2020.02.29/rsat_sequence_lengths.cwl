class: CommandLineTool
id: rsat_sequence_lengths.cwl
inputs:
- id: in_help
  doc: (must be first argument) display options
  type: boolean
  inputBinding:
    prefix: -help
- id: in_verbose
  doc: verbose
  type: boolean
  inputBinding:
    prefix: -v
- id: in_specified_standard_input
  doc: "if not specified, the standard input is used.\nThis allows to place the command\
    \ within a pipe."
  type: File
  inputBinding:
    prefix: -i
- id: in_unit
  doc: "|kb|mb|gb\nUnits for sequence lengths.\nSupported units:\nbp        base pairs\n\
    kb        kilobases\nmb        megabases\ngb        gigabases"
  type: string
  inputBinding:
    prefix: -unit
- id: in_in_format
  doc: "input format\nThe input file can contain either sequences or genomic\ncoordinates\
    \ (-in_format bed).\nFor a list of supported input sequences, type\nconvert-seq\
    \ -help"
  type: boolean
  inputBinding:
    prefix: -in_format
- id: in_specified_standard_output
  doc: "If not specified, the standard output is used.\nThis allows to place the command\
    \ within a pipe."
  type: File
  inputBinding:
    prefix: -o
- id: in_sum
  doc: only return sum of sequene lengths
  type: boolean
  inputBinding:
    prefix: -sum
- id: in_sequence_lengths
  doc: 1999 by Jacques van Helden (Jacques.van-Helden@univ-amu.fr)
  type: string
  inputBinding:
    position: 0
- id: in_sequences
  doc: USAGE
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specified_standard_output
  doc: "If not specified, the standard output is used.\nThis allows to place the command\
    \ within a pipe."
  type: File
  outputBinding:
    glob: $(inputs.in_specified_standard_output)
cwlVersion: v1.1
baseCommand:
- rsat
- sequence-lengths
