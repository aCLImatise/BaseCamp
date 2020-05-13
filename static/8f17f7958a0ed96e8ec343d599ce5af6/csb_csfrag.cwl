class: CommandLineTool
id: csb_csfrag.cwl
inputs:
- id: query
  doc: query sequence (FASTA file)
  type: string
  inputBinding:
    position: 0
- id: database
  doc: PDBS25 database directory (containing PDBS25cs.scs)
  type: string
  inputBinding:
    prefix: --database
- id: shifts
  doc: assigned chemical shifts table (NMR STAR file fragment)
  type: string
  inputBinding:
    prefix: --shifts
- id: window
  doc: sliding window size (default=8)
  type: string
  inputBinding:
    prefix: --window
- id: top
  doc: maximum number per starting position (default=25)
  type: string
  inputBinding:
    prefix: --top
- id: cpu
  doc: maximum degree of parallelism (default=8)
  type: string
  inputBinding:
    prefix: --cpu
- id: verbosity
  doc: verbosity level (default=1)
  type: string
  inputBinding:
    prefix: --verbosity
- id: output
  doc: output directory (default=.)
  type: string
  inputBinding:
    prefix: --output
- id: filtered_map
  doc: make an additional filtered fragment map of centroids (default=False)
  type: boolean
  inputBinding:
    prefix: --filtered-map
outputs: []
cwlVersion: v1.1
baseCommand:
- csb-csfrag
