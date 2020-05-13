class: CommandLineTool
id: crb_blast.cwl
inputs:
- id: query
  doc: query fasta file
  type: string
  inputBinding:
    prefix: --query
- id: target
  doc: target fasta file
  type: string
  inputBinding:
    prefix: --target
- id: evalue
  doc: 'e-value cut off for BLAST. Format 1e-5 (default: 1.0e-05)'
  type: string
  inputBinding:
    prefix: --evalue
- id: threads
  doc: 'number of threads to run BLAST with (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: output
  doc: output file as tsv
  type: string
  inputBinding:
    prefix: --output
- id: split
  doc: split the fasta files into chunks and run multiple blast jobs and then combine
    them.
  type: boolean
  inputBinding:
    prefix: --split
- id: verbose
  doc: be verbose
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- crb-blast
