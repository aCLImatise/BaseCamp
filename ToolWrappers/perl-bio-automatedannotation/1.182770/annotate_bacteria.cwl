class: CommandLineTool
id: annotate_bacteria.cwl
inputs:
- id: in_clusters
  doc: Conserved domain database
  type: string
  inputBinding:
    position: 0
- id: in_tigrfams
  doc: pfam (A)
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- annotate_bacteria
