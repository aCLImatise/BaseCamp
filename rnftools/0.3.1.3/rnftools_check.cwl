class: CommandLineTool
id: ../../../rnftools_check.cwl
inputs:
- id: rnf_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- rnftools
- check
