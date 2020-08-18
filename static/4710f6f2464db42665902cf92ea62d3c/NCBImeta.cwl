class: CommandLineTool
id: ../../../NCBImeta.py.cwl
inputs:
- id: config
  doc: Path to the yaml configuration file (ex. config.yaml).
  type: string
  inputBinding:
    prefix: --config
- id: flat
  doc: Don't create sub-directories in output directory.
  type: boolean
  inputBinding:
    prefix: --flat
outputs: []
cwlVersion: v1.1
baseCommand:
- NCBImeta.py
