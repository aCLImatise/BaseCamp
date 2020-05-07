class: CommandLineTool
id: validate_blat_parallel_local.cwl
inputs:
- id: parallel_blat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: re_ffa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: query_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: num_threads
  doc: (=8)             number of threads
  type: string
  inputBinding:
    prefix: --num_threads
- id: similar
  doc: (=0.95)              similarity
  type: string
  inputBinding:
    prefix: --similar
- id: min_contig
  doc: (=100)            minimum contigs
  type: string
  inputBinding:
    prefix: --min_contig
- id: similar
  doc: (=0.95)              similarity
  type: string
  inputBinding:
    prefix: --similar
- id: complete_rate
  doc: (=0.8)         completeness
  type: string
  inputBinding:
    prefix: --complete_rate
- id: is_local
  doc: local align
  type: boolean
  inputBinding:
    prefix: --is_local
outputs: []
cwlVersion: v1.1
baseCommand:
- validate_blat_parallel_local
