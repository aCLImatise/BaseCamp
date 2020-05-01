#!/usr/bin/env cwl-runner

baseCommand:
- roc
class: CommandLineTool
cwlVersion: v1.0
id: roc
inputs:
- doc: show verbose information (to stderr)
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: The input files
  id: input_file
  inputBinding:
    prefix: --input-file
  type: string
- doc: '[ --output-file ] arg  Output file name, defaults to - / write to stdout'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: "[ --separator ] arg    separator character (default: '\\t' for reading tsv)"
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: '[ --header-lines ] arg lines to skip before starting to read'
  id: h
  inputBinding:
    prefix: -H
  type: boolean
- doc: '[ --value ] arg        value column name'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: value column number
  id: value_column
  inputBinding:
    prefix: --value-column
  type: string
- doc: '[ --reverse ] arg      Reverse counting for score (default: higher scores  are
    better)'
  id: r
  inputBinding:
    prefix: -R
  type: boolean
- doc: '[ --tag ] arg          tag column name'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: tag column number. Tags must be TP/FP/FN, lines  with different tags will be
    ignored
  id: tag_column
  inputBinding:
    prefix: --tag-column
  type: string
- doc: '[ --filter ] arg       filter column name'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: filter column number. This is used if we the value  we are varying is a threshold
    for a certain filter.
  id: filter_column
  inputBinding:
    prefix: --filter-column
  type: string
- doc: '[ --filter-name ] arg  filter name if value is threshold for this filter'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
