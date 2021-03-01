class: CommandLineTool
id: bam2bedgraph.cwl
inputs:
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_region
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bam2bedgraph
