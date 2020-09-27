class: CommandLineTool
id: sequana_summary.cwl
inputs:
- id: in_file
  doc: one filename (either FastQ or BED file; see
  type: File
  inputBinding:
    prefix: --file
- id: in_glob
  doc: a glob/pattern of files. Must use quotes e.g.
  type: string
  inputBinding:
    prefix: --glob
- id: in_welcome
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_se_quan_a
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sequana_summary
