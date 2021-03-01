class: CommandLineTool
id: bl_exclude.cwl
inputs:
- id: in_line_excludefile_truncated
  doc: "each line in EXCLUDE_FILE is truncated by a space or tab and\nstored as an\
    \ id to exclude"
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_invert_exclude_file
  doc: invert exclude file to keep entries
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_specify_multiple_input_files
  doc: specify multiple INPUT files
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_specify_multiple_output_files
  doc: specify multiple OUTPUT files
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_exclude
  doc: ''
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
- bl-exclude
