class: CommandLineTool
id: ../../../gappa_tools_license.cwl
inputs:
- id: full
  doc: If set, show the full license instead of the short boilerplate.
  type: boolean
  inputBinding:
    prefix: --full
outputs: []
cwlVersion: v1.1
baseCommand:
- gappa
- tools
- license
