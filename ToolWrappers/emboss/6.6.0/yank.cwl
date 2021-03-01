class: CommandLineTool
id: yank.cwl
inputs:
- id: in_new_file
  doc: boolean    [N] Overwrite existing output file
  type: boolean?
  inputBinding:
    prefix: -newfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- yank
