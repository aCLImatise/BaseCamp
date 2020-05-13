class: CommandLineTool
id: compare_genomes_dnadiff.py.cwl
inputs:
- id: reference_fast_a
  doc: Reference fasta.
  type: string
  inputBinding:
    position: 0
- id: target_fast_a
  doc: Target fasta.
  type: string
  inputBinding:
    position: 1
- id: p
  doc: Save pickled results in this file (None).
  type: string
  inputBinding:
    prefix: -p
- id: r
  doc: Save dnadiff report in this file (None).
  type: string
  inputBinding:
    prefix: -r
- id: d
  doc: Use this working directory instead of a temporary directory (None).
  type: string
  inputBinding:
    prefix: -d
- id: k
  doc: Keep dnadiff result files (False).
  type: boolean
  inputBinding:
    prefix: -k
- id: v
  doc: Print out dnadiff output (False).
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- compare_genomes_dnadiff.py
