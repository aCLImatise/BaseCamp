class: CommandLineTool
id: tdbQuery.cwl
inputs:
- id: in_root
  doc: =/path/to/trackDb/root/dir
  type: boolean?
  inputBinding:
    prefix: -root
- id: in_release
  doc: '|beta|public'
  type: string?
  inputBinding:
    prefix: -release
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tdbQuery
