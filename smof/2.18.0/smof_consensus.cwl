class: CommandLineTool
id: ../../../smof_consensus.cwl
inputs:
- id: table
  doc: Print count table instead of consensus
  type: boolean
  inputBinding:
    prefix: --table
- id: input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- smof
- consensus
