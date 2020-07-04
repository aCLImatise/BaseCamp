class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/roc.cwl
inputs:
- id: verbose
  doc: show verbose information (to stderr)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: input_file
  doc: The input files
  type: string
  inputBinding:
    prefix: --input-file
- id: arg_output_file
  doc: '[ --output-file ] arg  Output file name, defaults to - / write to stdout'
  type: boolean
  inputBinding:
    prefix: -o
- id: arg_character_default
  doc: "[ --separator ] arg    separator character (default: '\\t' for reading tsv)"
  type: boolean
  inputBinding:
    prefix: -s
- id: arg_lines_skip
  doc: '[ --header-lines ] arg lines to skip before starting to read'
  type: boolean
  inputBinding:
    prefix: -H
- id: arg_value_column
  doc: '[ --value ] arg        value column name'
  type: boolean
  inputBinding:
    prefix: -v
- id: value_column
  doc: value column number
  type: string
  inputBinding:
    prefix: --value-column
- id: arg_reverse_counting
  doc: '[ --reverse ] arg      Reverse counting for score (default: higher scores  are
    better)'
  type: boolean
  inputBinding:
    prefix: -R
- id: arg_tag_column
  doc: '[ --tag ] arg          tag column name'
  type: boolean
  inputBinding:
    prefix: -t
- id: tag_column
  doc: tag column number. Tags must be TP/FP/FN, lines  with different tags will be
    ignored
  type: string
  inputBinding:
    prefix: --tag-column
- id: arg_filter_column
  doc: '[ --filter ] arg       filter column name'
  type: boolean
  inputBinding:
    prefix: -f
- id: filter_column
  doc: filter column number. This is used if we the value  we are varying is a threshold
    for a certain filter.
  type: string
  inputBinding:
    prefix: --filter-column
- id: arg_filter_name
  doc: '[ --filter-name ] arg  filter name if value is threshold for this filter'
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- roc
