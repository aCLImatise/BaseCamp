class: CommandLineTool
id: RunRapMap.sh.cwl
inputs:
- id: quasi_map
  doc: '--- maps reads to a quasi-mapping index'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- RunRapMap.sh
