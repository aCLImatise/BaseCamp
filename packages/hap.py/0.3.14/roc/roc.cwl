class: CommandLineTool
id: roc.cwl
inputs:
- id: in_verbose
  doc: show verbose information (to stderr)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_input_file
  doc: The input files
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_arg_output_file
  doc: '[ --output-file ] arg  Output file name, defaults to - / write to stdout'
  type: File?
  inputBinding:
    prefix: -o
- id: in_arg_separator_character
  doc: "[ --separator ] arg    separator character (default: '\\t' for reading tsv)"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_arg_lines_skip
  doc: '[ --header-lines ] arg lines to skip before starting to read'
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_arg_value_column
  doc: '[ --value ] arg        value column name'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_value_column
  doc: value column number
  type: long?
  inputBinding:
    prefix: --value-column
- id: in_arg_reverse_counting
  doc: "[ --reverse ] arg      Reverse counting for score (default: higher scores\n\
    are better)"
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_arg_tag_column
  doc: '[ --tag ] arg          tag column name'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_tag_column
  doc: "tag column number. Tags must be TP/FP/FN, lines\nwith different tags will\
    \ be ignored"
  type: long?
  inputBinding:
    prefix: --tag-column
- id: in_arg_filter_column
  doc: '[ --filter ] arg       filter column name'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_filter_column
  doc: "filter column number. This is used if we the value\nwe are varying is a threshold\
    \ for a certain filter."
  type: long?
  inputBinding:
    prefix: --filter-column
- id: in_arg_filter_name
  doc: '[ --filter-name ] arg  filter name if value is threshold for this filter'
  type: boolean?
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_file
  doc: '[ --output-file ] arg  Output file name, defaults to - / write to stdout'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hap.py:0.3.14--py27h5c5a3ab_0
cwlVersion: v1.1
baseCommand:
- roc
