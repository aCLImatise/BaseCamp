class: CommandLineTool
id: pyqi_make_command.cwl
inputs:
- id: name
  doc: the name of the Command [REQUIRED]
  type: string
  inputBinding:
    prefix: --name
- id: output_fp
  doc: output filepath to store generated Python code [REQUIRED]
  type: string
  inputBinding:
    prefix: --output-fp
outputs: []
cwlVersion: v1.1
baseCommand:
- pyqi
- make-command
