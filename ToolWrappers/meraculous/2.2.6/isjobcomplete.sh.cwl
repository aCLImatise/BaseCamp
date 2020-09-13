class: CommandLineTool
id: ../../../isjobcomplete.sh.cwl
inputs:
- id: in_h
  doc: ''
  type: string
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- isjobcomplete.sh
