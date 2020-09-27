class: CommandLineTool
id: zagros.cwl
inputs:
- id: in_output
  doc: 'output file name (default: stdout)'
  type: File
  inputBinding:
    prefix: -output
- id: in_width
  doc: 'width of motifs to find (4 <= w <= 12; default: 6)'
  type: boolean
  inputBinding:
    prefix: -width
- id: in_number
  doc: 'number of motifs to output (default: 10)'
  type: boolean
  inputBinding:
    prefix: -number
- id: in_chrom
  doc: directory with chrom files (FASTA format)
  type: boolean
  inputBinding:
    prefix: -chrom
- id: in_structure
  doc: structure information file
  type: boolean
  inputBinding:
    prefix: -structure
- id: in_diagnostic_events
  doc: diagnostic events information file
  type: boolean
  inputBinding:
    prefix: -diagnostic_events
- id: in_delta
  doc: "provide a fixed value for delta, the offset of\ncross-linking site from motif\
    \ occurrences. -8 <= l <=\n8; if omitted, delta is optimised using an exhaustive\n\
    search"
  type: boolean
  inputBinding:
    prefix: -delta
- id: in_geo
  doc: "optimize the geometric distributionparameter for\nthe distirbution of cross-link\
    \ sites around motif\noccurrences, using the Newton-Raphson algorithm.\nIf omitted,\
    \ this parameter is not optimised and is set\nto a empirically pre-determined\
    \ default value."
  type: boolean
  inputBinding:
    prefix: -geo
- id: in_de_weight
  doc: "A weight to determine the diagnostic events' level of\ncontribution (default:\
    \ 1.1)"
  type: boolean
  inputBinding:
    prefix: -de_weight
- id: in_indicators
  doc: "output indicator probabilities for each sequence\nand motif to this file"
  type: File
  inputBinding:
    prefix: -indicators
- id: in_starting_points
  doc: "number of starting points to try for EM search. Higher\nvalues will be slower,\
    \ but more likely to find the\nglobal maximum (default: 10)"
  type: boolean
  inputBinding:
    prefix: -starting-points
- id: in_verbose
  doc: print more run info
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_about
  doc: print about message
  type: boolean
  inputBinding:
    prefix: -about
- id: in_target_regions_slash_sequences
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'output file name (default: stdout)'
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_indicators
  doc: "output indicator probabilities for each sequence\nand motif to this file"
  type: File
  outputBinding:
    glob: $(inputs.in_indicators)
cwlVersion: v1.1
baseCommand:
- zagros
