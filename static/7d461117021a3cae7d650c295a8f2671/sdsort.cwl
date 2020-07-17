class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sdsort.cwl
inputs:
- id: numeric_sort_default
  doc: numeric sort (default is text sort)
  type: boolean
  inputBinding:
    prefix: -n
- id: descending_sort_default
  doc: descending sort (default is ascending sort)
  type: boolean
  inputBinding:
    prefix: -r
- id: datafield_specifies_field
  doc: <DataField>   specifies sort field
  type: boolean
  inputBinding:
    prefix: -f
- id: fast_mode_sorts
  doc: fast mode. Sorts the records for each named compound independently (must be
    consecutive)
  type: boolean
  inputBinding:
    prefix: -s
- id: id
  doc: <NameField>  specifies compound name field (default = 1st title line)
  type: boolean
  inputBinding:
    prefix: -id
- id: data_field
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sd_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- sdsort
