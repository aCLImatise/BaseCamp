class: CommandLineTool
id: ../../../generate_kmer_distribution.py.cwl
inputs:
- id: input
  doc: Kraken counts file for each genome mapped to the overall database.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Output file containing each classified taxonomy ID and the kmer distributions
    of all genomes with this classification.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- generate_kmer_distribution.py
