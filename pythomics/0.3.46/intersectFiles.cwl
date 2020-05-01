#!/usr/bin/env cwl-runner

baseCommand:
- intersectFiles.py
class: CommandLineTool
cwlVersion: v1.0
id: intersectfiles.py
inputs:
- doc: Threads to run
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: This is the file to lookup values from.
  id: a
  inputBinding:
    prefix: -a
  type: string
- doc: The delimiter for fields.
  id: a_delim
  inputBinding:
    prefix: --adelim
  type: string
- doc: 'The column of interest (default: 1). Can be a column name.'
  id: a_col
  inputBinding:
    prefix: --acol
  type: string
- doc: 'The number of headers lines (default: 1).'
  id: a_header
  inputBinding:
    prefix: --aheader
  type: string
- doc: This is the file to lookup values in.
  id: b
  inputBinding:
    prefix: -b
  type: string
- doc: The delimiter for fields.
  id: b_delim
  inputBinding:
    prefix: --bdelim
  type: string
- doc: 'The column of interest (default: 1). Can be a column name.'
  id: b_col
  inputBinding:
    prefix: --bcol
  type: string
- doc: 'The number of headers lines (default: 1).'
  id: b_header
  inputBinding:
    prefix: --bheader
  type: string
- doc: The column to take entries from in file b.
  id: b_lookup
  inputBinding:
    prefix: --blookup
  type: string
- doc: For numeric operations, fail if types are incorrect (converting NA to a float
    for instance).
  id: strict
  inputBinding:
    prefix: --strict
  type: boolean
- doc: '[OUT], --out [OUT] The file to write results to. Leave blank for stdout,'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: The function to apply to found entries.
  id: function
  inputBinding:
    prefix: --function
  type: string
- doc: The column name to give the new appended value. Defaults to function chosen
  id: colname
  inputBinding:
    prefix: --colname
  type: string
- doc: An optional regex pattern for matching columns in file a.
  id: a_regex
  inputBinding:
    prefix: --aregex
  type: string
- doc: An optional regex pattern for matching columns in file b.
  id: b_regex
  inputBinding:
    prefix: --bregex
  type: string
