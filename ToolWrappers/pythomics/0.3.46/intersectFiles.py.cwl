class: CommandLineTool
id: intersectFiles.py.cwl
inputs:
- id: in_threads_to_run
  doc: Threads to run
  type: string?
  inputBinding:
    prefix: -p
- id: in_file_lookup_from
  doc: This is the file to lookup values from.
  type: File?
  inputBinding:
    prefix: -a
- id: in_a_delim
  doc: The delimiter for fields.
  type: string?
  inputBinding:
    prefix: --adelim
- id: in_a_col
  doc: 'The column of interest (default: 1). Can be a column'
  type: long?
  inputBinding:
    prefix: --acol
- id: in_file_lookup_in
  doc: This is the file to lookup values in.
  type: File?
  inputBinding:
    prefix: -b
- id: in_b_delim
  doc: The delimiter for fields.
  type: string?
  inputBinding:
    prefix: --bdelim
- id: in_b_col
  doc: 'The column of interest (default: 1). Can be a column'
  type: long?
  inputBinding:
    prefix: --bcol
- id: in_b_lookup
  doc: The column to take entries from in file b.
  type: File?
  inputBinding:
    prefix: --blookup
- id: in_strict
  doc: "For numeric operations, fail if types are incorrect\n(converting NA to a float\
    \ for instance)."
  type: boolean?
  inputBinding:
    prefix: --strict
- id: in_file_write_results
  doc: "[OUT], --out [OUT]\nThe file to write results to. Leave blank for stdout,"
  type: File?
  inputBinding:
    prefix: -o
- id: in_function
  doc: The function to apply to found entries.
  type: string?
  inputBinding:
    prefix: --function
- id: in_colname
  doc: "The column name to give the new appended value.\nDefaults to function chosen"
  type: string?
  inputBinding:
    prefix: --colname
- id: in_a_regex
  doc: An optional regex pattern for matching columns in file
  type: File?
  inputBinding:
    prefix: --aregex
- id: in_a_dot
  doc: --bregex BREGEX       An optional regex pattern for matching columns in file
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_write_results
  doc: "[OUT], --out [OUT]\nThe file to write results to. Leave blank for stdout,"
  type: File?
  outputBinding:
    glob: $(inputs.in_file_write_results)
hints: []
cwlVersion: v1.1
baseCommand:
- intersectFiles.py
