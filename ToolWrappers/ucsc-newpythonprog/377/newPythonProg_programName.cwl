class: CommandLineTool
id: newPythonProg_programName.cwl
inputs:
- id: in_not_valid_option
  doc: not a valid option
  type: string
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- newPythonProg
- programName
