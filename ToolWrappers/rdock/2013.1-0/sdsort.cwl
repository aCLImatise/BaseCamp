class: CommandLineTool
id: sdsort.cwl
inputs:
- id: in_numeric_sort_default
  doc: numeric sort (default is text sort)
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_descending_sort_default
  doc: descending sort (default is ascending sort)
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_datafield_specifies_sort
  doc: <DataField>   specifies sort field
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_fast_mode_sorts
  doc: fast mode. Sorts the records for each named compound independently (must be
    consecutive)
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_id
  doc: <NameField>  specifies compound name field (default = 1st title line)
  type: boolean?
  inputBinding:
    prefix: -id
- id: in_data_field
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_sd_files
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sdsort
