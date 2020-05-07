class: CommandLineTool
id: analyze_primers.py.cwl
inputs:
- id: fast_a_seqs
  doc: Target fasta file(s) to score input primer(s) against. Separate multiple files
    with a colon. [REQUIRED]
  type: string
  inputBinding:
    prefix: --fasta_seqs
outputs: []
cwlVersion: v1.1
baseCommand:
- analyze_primers.py
