class: CommandLineTool
id: _yank.cwl
inputs:
- id: in_new_file
  doc: boolean    [N] Overwrite existing output file
  type: boolean
  inputBinding:
    prefix: -newfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _yank
