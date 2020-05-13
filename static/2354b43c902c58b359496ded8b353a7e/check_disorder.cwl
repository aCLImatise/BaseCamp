class: CommandLineTool
id: check_disorder.pl.cwl
inputs:
- id: list
  doc: list all IDs that have children features appearing in front of themselves
  type: boolean
  inputBinding:
    prefix: --list
outputs: []
cwlVersion: v1.1
baseCommand:
- check-disorder.pl
