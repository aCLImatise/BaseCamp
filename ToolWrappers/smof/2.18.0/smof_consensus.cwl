class: CommandLineTool
id: smof_consensus.cwl
inputs:
- id: in_table
  doc: Print count table instead of consensus
  type: boolean
  inputBinding:
    prefix: --table
- id: in_input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- smof
- consensus
