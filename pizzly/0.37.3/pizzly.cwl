class: CommandLineTool
id: pizzly.cwl
inputs:
- id: k
  doc: k-mer size used in kallisto
  type: string
  inputBinding:
    prefix: -k
- id: align_score
  doc: 'Maximum number of mismatches allowed (default: 2)'
  type: string
  inputBinding:
    prefix: --align-score
- id: insert_size
  doc: 'Maximum fragment size of library (default: 400)'
  type: string
  inputBinding:
    prefix: --insert-size
- id: output
  doc: Prefix for output files
  type: string
  inputBinding:
    prefix: --output
- id: gtf
  doc: Annotation in GTF format
  type: string
  inputBinding:
    prefix: --gtf
- id: cache
  doc: File for caching annotation (created if not present, otherwise reused from
    previous runs)
  type: string
  inputBinding:
    prefix: --cache
- id: fast_a
  doc: Fasta reference
  type: string
  inputBinding:
    prefix: --fasta
- id: ignore_protein
  doc: Ignore any protein coding information in annotation
  type: boolean
  inputBinding:
    prefix: --ignore-protein
outputs: []
cwlVersion: v1.1
baseCommand:
- pizzly
