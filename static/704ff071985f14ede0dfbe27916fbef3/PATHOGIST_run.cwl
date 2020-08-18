class: CommandLineTool
id: ../../../PATHOGIST_run.cwl
inputs:
- id: new_config
  doc: write a blank configuration file at path given by CONFIG
  type: boolean
  inputBinding:
    prefix: --new_config
- id: config
  doc: path to input configuration file, or path to write a new configuration file
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- PATHOGIST
- run
