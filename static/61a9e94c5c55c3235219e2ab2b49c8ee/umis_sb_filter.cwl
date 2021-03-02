class: CommandLineTool
id: umis_sb_filter.cwl
inputs:
- id: in_files_dot
  doc: 'Options:'
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
- umis
- sb_filter
