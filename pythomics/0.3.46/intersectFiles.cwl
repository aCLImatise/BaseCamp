class: CommandLineTool
id: intersectFiles.py.cwl
inputs:
- id: p
  doc: Threads to run
  type: string
  inputBinding:
    prefix: -p
- id: a
  doc: This is the file to lookup values from.
  type: string
  inputBinding:
    prefix: -a
- id: a_delim
  doc: The delimiter for fields.
  type: string
  inputBinding:
    prefix: --adelim
- id: a_col
  doc: 'The column of interest (default: 1). Can be a column name.'
  type: string
  inputBinding:
    prefix: --acol
- id: a_header
  doc: 'The number of headers lines (default: 1).'
  type: string
  inputBinding:
    prefix: --aheader
- id: b
  doc: This is the file to lookup values in.
  type: string
  inputBinding:
    prefix: -b
- id: b_delim
  doc: The delimiter for fields.
  type: string
  inputBinding:
    prefix: --bdelim
- id: b_col
  doc: 'The column of interest (default: 1). Can be a column name.'
  type: string
  inputBinding:
    prefix: --bcol
- id: b_header
  doc: 'The number of headers lines (default: 1).'
  type: string
  inputBinding:
    prefix: --bheader
- id: b_lookup
  doc: The column to take entries from in file b.
  type: string
  inputBinding:
    prefix: --blookup
- id: strict
  doc: For numeric operations, fail if types are incorrect (converting NA to a float
    for instance).
  type: boolean
  inputBinding:
    prefix: --strict
- id: o
  doc: '[OUT], --out [OUT] The file to write results to. Leave blank for stdout,'
  type: boolean
  inputBinding:
    prefix: -o
- id: function
  doc: The function to apply to found entries.
  type: string
  inputBinding:
    prefix: --function
- id: colname
  doc: The column name to give the new appended value. Defaults to function chosen
  type: string
  inputBinding:
    prefix: --colname
- id: a_regex
  doc: An optional regex pattern for matching columns in file a.
  type: string
  inputBinding:
    prefix: --aregex
- id: b_regex
  doc: An optional regex pattern for matching columns in file b.
  type: string
  inputBinding:
    prefix: --bregex
outputs: []
cwlVersion: v1.1
baseCommand:
- intersectFiles.py
