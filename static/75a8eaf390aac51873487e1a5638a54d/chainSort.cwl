class: CommandLineTool
id: chainSort.cwl
inputs:
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: outfile
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: target
  doc: on target start rather than score
  type: string
  inputBinding:
    prefix: -target
- id: query
  doc: on query start rather than score
  type: string
  inputBinding:
    prefix: -query
- id: index
  doc: build simple two column index file <out file position>  <value> where <value>
    is score, target, or query  depending on the sort.
  type: string
  inputBinding:
    prefix: -index
outputs: []
cwlVersion: v1.1
baseCommand:
- chainSort
