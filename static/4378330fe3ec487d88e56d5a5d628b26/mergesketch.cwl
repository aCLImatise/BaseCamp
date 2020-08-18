class: CommandLineTool
id: ../../../mergesketch.sh.cwl
inputs:
- id: list_dot
  doc: in= is optional so wildcards may be used.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mergesketch.sh
