class: CommandLineTool
id: rsat_classfreq.cwl
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
- id: in_only_numbers_will
  doc: "Only the numbers will be read, other words are ignored.\nif not specified,\
    \ the standard input is used.\nThis allows to place the command within a pipe."
  type: File
  inputBinding:
    prefix: -i
- id: in_specified_standard_output
  doc: "if not specified, the standard output is used.\nThis allows to place the command\
    \ within a pipe."
  type: File
  inputBinding:
    prefix: -o
- id: in_ci
  doc: "class interval. If not specified, takes the value\n(max - min)/20\nso that\
    \ 21 classes are specified."
  type: boolean
  inputBinding:
    prefix: -ci
- id: in_col
  doc: "column to which apply the program. This option can\nbe used iteratively."
  type: boolean
  inputBinding:
    prefix: -col
- id: in_min
  doc: "#  nusmbers strictly smaller than # are not taken into account.\n# also determines\
    \ the lower limit of the first class."
  type: boolean
  inputBinding:
    prefix: -min
- id: in_max
  doc: '#  numbers strictly greater than # are not taken into account.'
  type: boolean
  inputBinding:
    prefix: -max
- id: in_from
  doc: "# inferior limit for the classes to display\nvalues lower than this limit\
    \ are however taken into account\nin the calculation of statistics (mean, variance,\
    \ ...) and of\nclass frequencies (In contrast with the -min option)."
  type: boolean
  inputBinding:
    prefix: -from
- id: in_to
  doc: "#   superior limit for the classes to display\nvalues higher than this limit\
    \ are however taken into account\nin the calculation of statistics (mean, variance,\
    \ ...) and of\nclass frequencies (In contrast with the -max option)."
  type: boolean
  inputBinding:
    prefix: -to
- id: in_thr
  doc: "# threshold\nOnly display classes with absolute frequency higher\nthan or\
    \ equal to the threshold. This option is useful\nfor sparse data, where many classes\
    \ do not contain any\nobservation (-thr 1)."
  type: boolean
  inputBinding:
    prefix: -thr
- id: in_class_freq
  doc: AUTHORS
  type: string
  inputBinding:
    position: 0
- id: in_statistics
  doc: USAGE
  type: string
  inputBinding:
    position: 0
- id: in_cum
  doc: is the count of (x <= upperlimit)
  type: string
  inputBinding:
    position: 0
- id: in_d_cum
  doc: is the count of (x >= lowerlimit)
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specified_standard_output
  doc: "if not specified, the standard output is used.\nThis allows to place the command\
    \ within a pipe."
  type: File
  outputBinding:
    glob: $(inputs.in_specified_standard_output)
cwlVersion: v1.1
baseCommand:
- rsat
- classfreq
