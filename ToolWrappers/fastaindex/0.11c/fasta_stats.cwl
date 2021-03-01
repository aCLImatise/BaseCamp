class: CommandLineTool
id: fasta_stats.cwl
inputs:
- id: in_verbose
  doc: verbose
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_fast_a
  doc: FASTA file(s)
  type: string[]
  inputBinding:
    prefix: --fasta
- id: in_out
  doc: output stream    [stdout]
  type: string?
  inputBinding:
    prefix: --out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fasta_stats
