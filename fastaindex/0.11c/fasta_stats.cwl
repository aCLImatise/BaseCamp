class: CommandLineTool
id: fasta_stats.cwl
inputs:
- id: verbose
  doc: verbose
  type: boolean
  inputBinding:
    prefix: --verbose
- id: fast_a
  doc: FASTA file(s)
  type: string[]
  inputBinding:
    prefix: --fasta
- id: out
  doc: output stream    [stdout]
  type: string
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta_stats
