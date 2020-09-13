class: CommandLineTool
id: ../../../cmph5tools.py_stats.cwl
inputs:
- id: in_outfile
  doc: output csv filename
  type: File
  inputBinding:
    prefix: --outFile
- id: in_what
  doc: ''
  type: string
  inputBinding:
    prefix: --what
- id: in_where
  doc: ''
  type: string
  inputBinding:
    prefix: --where
- id: in_group_by
  doc: ''
  type: string
  inputBinding:
    prefix: --groupBy
- id: in_sort_by
  doc: ''
  type: string
  inputBinding:
    prefix: --sortBy
- id: in_limit
  doc: ''
  type: string
  inputBinding:
    prefix: --limit
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: output csv filename
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
cwlVersion: v1.1
baseCommand:
- cmph5tools.py
- stats
