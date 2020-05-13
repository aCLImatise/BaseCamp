class: CommandLineTool
id: NormGeneCounts.py.cwl
inputs:
- id: gene_counts_file
  doc: input gene base frequencies
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- NormGeneCounts.py
