class: CommandLineTool
id: orthomclDumpPairsFiles.cwl
inputs:
- id: config_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: inparalog
  doc: ', Ortholog, CoOrtholog tables - populated by orthomclPairs'
  type: boolean
  inputBinding:
    prefix: '- InParalog'
outputs: []
cwlVersion: v1.1
baseCommand:
- orthomclDumpPairsFiles
