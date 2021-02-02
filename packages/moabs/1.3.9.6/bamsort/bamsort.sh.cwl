class: CommandLineTool
id: bamsort.sh.cwl
inputs:
- id: in_not_exist
  doc: not exist.
  type: string
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bamsort.sh
