class: CommandLineTool
id: _newcpgseek.cwl
inputs:
- id: score
  doc: integer    [17] CpG score (Integer from 1 to 200)
  type: boolean
  inputBinding:
    prefix: -score
outputs: []
cwlVersion: v1.1
baseCommand:
- _newcpgseek
