class: CommandLineTool
id: add_ambiguous_counts.py.cwl
inputs:
- id: input
  doc: File containing the candidate fusion genes.
  type: string
  inputBinding:
    prefix: --input
- id: input_ambiguous
  doc: File containing the pairs of genes and their corresponding number of reads
    which map ambiguously on each other.
  type: string
  inputBinding:
    prefix: --input_ambiguous
- id: output
  doc: File containing the candidate fusion genes from the input and an extra column
    with their associatied counts of common mapping reads.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- add_ambiguous_counts.py
