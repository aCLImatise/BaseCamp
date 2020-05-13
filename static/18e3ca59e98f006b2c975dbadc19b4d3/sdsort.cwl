class: CommandLineTool
id: sdsort.cwl
inputs:
- id: n
  doc: numeric sort (default is text sort)
  type: boolean
  inputBinding:
    prefix: -n
- id: r
  doc: descending sort (default is ascending sort)
  type: boolean
  inputBinding:
    prefix: -r
- id: f
  doc: <DataField>   specifies sort field
  type: boolean
  inputBinding:
    prefix: -f
- id: s
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
outputs: []
cwlVersion: v1.1
baseCommand:
- sdsort
