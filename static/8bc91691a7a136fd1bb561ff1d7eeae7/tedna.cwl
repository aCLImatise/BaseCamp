class: CommandLineTool
id: tedna.cwl
inputs:
- id: insert
  doc: Insert size.
  type: boolean
  inputBinding:
    prefix: --insert
- id: km_er
  doc: K-mer size.
  type: boolean
  inputBinding:
    prefix: --kmer
- id: output
  doc: Output file.
  type: boolean
  inputBinding:
    prefix: --output
- id: threshold
  doc: 'K-mer frequency threshold   (default: ad hoc).'
  type: boolean
  inputBinding:
    prefix: --threshold
- id: min_te_size
  doc: 'Minimum TE size             (default: 500).'
  type: boolean
  inputBinding:
    prefix: --min-te-size
- id: max_te_size
  doc: 'Maximum TE size             (default: 30000).'
  type: boolean
  inputBinding:
    prefix: --max-te-size
- id: processors
  doc: 'Number of processors        (default: 2).'
  type: boolean
  inputBinding:
    prefix: --processors
- id: bytes_per_thread
  doc: 'Number of bytes read per thread    (default: 10000000).'
  type: boolean
  inputBinding:
    prefix: --bytes-per-thread
- id: max_reads
  doc: 'Maximum number of reads read       (default: 0), 0: read all.'
  type: boolean
  inputBinding:
    prefix: --max-reads
- id: check
  doc: 'Check if a sequence is assembled   (default: none).'
  type: boolean
  inputBinding:
    prefix: --check
outputs: []
cwlVersion: v1.1
baseCommand:
- tedna
