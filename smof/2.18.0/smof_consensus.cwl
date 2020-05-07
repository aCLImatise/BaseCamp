class: CommandLineTool
id: smof_consensus.cwl
inputs:
- id: input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
- id: table
  doc: Print count table instead of consensus
  type: boolean
  inputBinding:
    prefix: --table
outputs: []
cwlVersion: v1.1
baseCommand:
- smof
- consensus
