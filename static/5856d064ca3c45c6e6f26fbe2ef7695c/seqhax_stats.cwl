class: CommandLineTool
id: seqhax_stats.cwl
inputs:
- id: t
  doc: Number of parallel jobs [1]
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- seqhax
- stats
