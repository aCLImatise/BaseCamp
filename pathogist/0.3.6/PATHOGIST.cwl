class: CommandLineTool
id: ../../../PATHOGIST.cwl
inputs:
- id: in_loglevel
  doc: "Set the logging level\n"
  type: string
  inputBinding:
    prefix: --loglevel
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- PATHOGIST
