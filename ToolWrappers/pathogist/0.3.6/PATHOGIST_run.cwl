class: CommandLineTool
id: PATHOGIST_run.cwl
inputs:
- id: in_new_config
  doc: write a blank configuration file at path given by CONFIG
  type: boolean
  inputBinding:
    prefix: --new_config
- id: in_config
  doc: "path to input configuration file, or path to write a new\nconfiguration file"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- PATHOGIST
- run
