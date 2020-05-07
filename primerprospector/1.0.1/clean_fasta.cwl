class: CommandLineTool
id: clean_fasta.py.cwl
inputs:
- id: fast_a_seqs
  doc: Target fasta file(s) to filter. Separate multiple files with a colon. [REQUIRED]
  type: string
  inputBinding:
    prefix: --fasta_seqs
outputs: []
cwlVersion: v1.1
baseCommand:
- clean_fasta.py
