class: CommandLineTool
id: igdiscover_igblast.cwl
inputs:
- id: database
  doc: Database directory with V.fasta, D.fasta, J.fasta.
  type: string
  inputBinding:
    position: 0
- id: fast_a
  doc: File with original reads
  type: string
  inputBinding:
    position: 1
- id: threads
  doc: 'Number of threads. Default: 1. Use 0 for no. of available CPUs.'
  type: string
  inputBinding:
    prefix: --threads
- id: cache
  doc: Use the cache
  type: boolean
  inputBinding:
    prefix: --cache
- id: no_cache
  doc: Do not use the cache
  type: boolean
  inputBinding:
    prefix: --no-cache
- id: penalty
  doc: '{-1,-2,-3,-4} BLAST mismatch penalty (default: -1)'
  type: boolean
  inputBinding:
    prefix: --penalty
- id: species
  doc: 'Tell IgBLAST which species to use. Note that this setting does not seem to
    have any effect since we provide our own database to IgBLAST. Default: Use IgBLAST’s
    default'
  type: string
  inputBinding:
    prefix: --species
- id: sequence_type
  doc: 'Sequence type. Default: Ig'
  type: string
  inputBinding:
    prefix: --sequence-type
- id: raw
  doc: Write raw IgBLAST output to FILE (add .gz to compress)
  type: File
  inputBinding:
    prefix: --raw
- id: limit
  doc: Limit processing to first N records
  type: string
  inputBinding:
    prefix: --limit
- id: rename
  doc: Rename reads to PREFIXseqN (where N is a number starting at 1)
  type: string
  inputBinding:
    prefix: --rename
- id: stats
  doc: Write statistics in JSON format to FILE
  type: File
  inputBinding:
    prefix: --stats
outputs: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- igblast
