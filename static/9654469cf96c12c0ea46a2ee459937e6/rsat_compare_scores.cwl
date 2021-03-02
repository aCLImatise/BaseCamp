class: CommandLineTool
id: rsat_compare_scores.cwl
inputs:
- id: in_help
  doc: (must be first argument) display options
  type: boolean?
  inputBinding:
    prefix: -help
- id: in_verbose
  doc: verbose
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_use_recursively_indicate
  doc: "(use recursively to indicate several input files)\ninput file.\nAt least 2\
    \ different input files must be specified.\nThe input files each contain a table\
    \ with several columns,\nseparated by tabulations (      ).\nThe first column\
    \ of each input file contains the key."
  type: File?
  inputBinding:
    prefix: -i
- id: in_files
  doc: "list of files specified on the command line.\nAll following arguments are\
    \ considered as input file"
  type: boolean?
  inputBinding:
    prefix: -files
- id: in_file_list
  doc: "Specify a file containing the list of files to be compared.\nThis is especially\
    \ useful for long file lists of input files\n(e.g. > 500 files)."
  type: boolean?
  inputBinding:
    prefix: -filelist
- id: in_specified_standard_output
  doc: "if not specified, the standard output is used.\nThis allows to place the command\
    \ within a pipe."
  type: File?
  inputBinding:
    prefix: -o
- id: in_format
  doc: "format (default: profiles)\nSupported formats: classes,profiles\nProfiles:\
    \ tab-delimited file with one column per file, and one\nrow per object to which\
    \ a score was assigned.\nClasses: 3-column tab-delimited files. The respective\
    \ columns\nindicate:\n- object\n- input file\n- score"
  type: File?
  inputBinding:
    prefix: -format
- id: in_header
  doc: the first line of each input file as column
  type: File?
  inputBinding:
    prefix: -header
- id: in_null
  doc: "null string (default <NULL>) displayed when one\nfile contains no value for\
    \ a given key)"
  type: boolean?
  inputBinding:
    prefix: -null
- id: in_numeric
  doc: sort IDs numerically rather than alphabetically
  type: boolean?
  inputBinding:
    prefix: -numeric
- id: in_decreasing
  doc: sort IDs numerically in a decreasing order
  type: boolean?
  inputBinding:
    prefix: -decreasing
- id: in_basename
  doc: remove path (directory) from file names in the header
  type: boolean?
  inputBinding:
    prefix: -basename
- id: in_suppress
  doc: "Suppress a given substring from file names in the header\nThis option can\
    \ be used iteratively to suppress different\nsubstrings.\nExample:\n-suppress\
    \ '.tab' -suppress 'oligos_'\nThe substring may contain a regular expression.\n\
    Example:\n-suppress 'w+_'"
  type: boolean?
  inputBinding:
    prefix: -suppress
- id: in_subst
  doc: "Substitute a given substring from file names in the header\nby a specified\
    \ substring.\nExample:\n-subst 'oligo_' 'ol'"
  type: boolean?
  inputBinding:
    prefix: -subst
- id: in_compare_scores
  doc: 1998 by Jacques van Helden (Jacques.van-Helden@univ-amu.fr)
  type: string
  inputBinding:
    position: 0
- id: in_util
  doc: OPTIONS
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specified_standard_output
  doc: "if not specified, the standard output is used.\nThis allows to place the command\
    \ within a pipe."
  type: File?
  outputBinding:
    glob: $(inputs.in_specified_standard_output)
hints: []
cwlVersion: v1.1
baseCommand:
- rsat
- compare-scores
