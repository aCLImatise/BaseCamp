class: CommandLineTool
id: jmap.cwl
inputs:
- id: in_dump
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -dump
- id: in_histo
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -histo
- id: in_finalizer_info
  doc: ''
  type: string?
  inputBinding:
    prefix: -finalizerinfo
- id: in_cl_stats
  doc: ''
  type: string?
  inputBinding:
    prefix: -clstats
- id: in_live
  doc: "dump only live objects; if not specified,\nall objects in the heap are dumped."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- jmap
