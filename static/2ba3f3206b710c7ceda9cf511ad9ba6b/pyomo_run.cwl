class: CommandLineTool
id: pyomo_run.cwl
inputs:
- id: command
  doc: The command and command-line options
  type: string
  inputBinding:
    position: 0
- id: list
  doc: List the commands that are installed with Pyomo
  type: boolean
  inputBinding:
    prefix: --list
outputs: []
cwlVersion: v1.1
baseCommand:
- pyomo
- run
