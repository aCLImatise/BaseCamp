class: CommandLineTool
id: tty.cwl
inputs:
- id: in_silent
  doc: print nothing, only return an exit status
  type: boolean
  inputBinding:
    prefix: --silent
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tty
