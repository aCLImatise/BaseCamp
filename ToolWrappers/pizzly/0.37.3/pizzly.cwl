class: CommandLineTool
id: pizzly.cwl
inputs:
- id: in_kmer_size_used
  doc: k-mer size used in kallisto
  type: long
  inputBinding:
    prefix: -k
- id: in_align_score
  doc: 'Maximum number of mismatches allowed (default: 2)'
  type: long
  inputBinding:
    prefix: --align-score
- id: in_insert_size
  doc: 'Maximum fragment size of library (default: 400)'
  type: long
  inputBinding:
    prefix: --insert-size
- id: in_output
  doc: Prefix for output files
  type: string
  inputBinding:
    prefix: --output
- id: in_gtf
  doc: Annotation in GTF format
  type: string
  inputBinding:
    prefix: --gtf
- id: in_cache
  doc: "File for caching annotation (created if not present, otherwise\nreused from\
    \ previous runs)"
  type: File
  inputBinding:
    prefix: --cache
- id: in_fast_a
  doc: Fasta reference
  type: string
  inputBinding:
    prefix: --fasta
- id: in_ignore_protein
  doc: Ignore any protein coding information in annotation
  type: boolean
  inputBinding:
    prefix: --ignore-protein
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pizzly
