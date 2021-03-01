class: CommandLineTool
id: chainSort.cwl
inputs:
- id: in_target
  doc: on target start rather than score
  type: string?
  inputBinding:
    prefix: -target
- id: in_query
  doc: on query start rather than score
  type: string?
  inputBinding:
    prefix: -query
- id: in_index
  doc: "build simple two column index file\n<out file position>  <value>\nwhere <value>\
    \ is score, target, or query\ndepending on the sort.\n"
  type: File?
  inputBinding:
    prefix: -index
- id: in_in_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_index
  doc: "build simple two column index file\n<out file position>  <value>\nwhere <value>\
    \ is score, target, or query\ndepending on the sort.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_index)
hints: []
cwlVersion: v1.1
baseCommand:
- chainSort
