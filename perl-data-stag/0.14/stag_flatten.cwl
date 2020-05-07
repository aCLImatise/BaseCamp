class: CommandLineTool
id: stag_flatten.pl.cwl
inputs:
- id: special_operations
  doc: james-bond
  type: string
  inputBinding:
    position: 0
- id: special_operations
  doc: fred
  type: string
  inputBinding:
    position: 1
- id: p
  doc: '|parser FORMAT FORMAT is one of xml, sxpr or itext xml assumed as default'
  type: boolean
  inputBinding:
    prefix: -p
- id: c
  doc: '|column COL1,COL2,COL3,.. the name of the columns/elements to write out this
    can be specified either with multiple -c arguments, or with a comma-seperated
    (no spaces) list of column (terminal node) names after a single -c'
  type: boolean
  inputBinding:
    prefix: -c
- id: n
  doc: '|nest if set, then the output will be a compress repeating values into the
    same row; each cell in the table will be enclosed by {}, and will contain a comma-delimited
    set of values'
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- stag-flatten.pl
