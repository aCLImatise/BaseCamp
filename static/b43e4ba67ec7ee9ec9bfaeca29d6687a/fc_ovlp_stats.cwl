class: CommandLineTool
id: fc_ovlp_stats.cwl
inputs:
- id: n_core
  doc: 'number of processes used for generating consensus; 0 for main process only
    (default: 4)'
  type: string
  inputBinding:
    prefix: --n-core
- id: fof_n
  doc: 'file contains the path of all LAS file to be processed in parallel (default:
    None)'
  type: string
  inputBinding:
    prefix: --fofn
- id: min_len
  doc: 'min length of the reads (default: 2500)'
  type: long
  inputBinding:
    prefix: --min-len
- id: db_fn
  doc: 'DAZZLER DB of preads (default: ./1-preads_ovl/preads.db)'
  type: string
  inputBinding:
    prefix: --db-fn
- id: stream
  doc: 'stream from LA4Falcon, instead of slurping all at once; can save memory for
    large data (default: False)'
  type: boolean
  inputBinding:
    prefix: --stream
- id: debug
  doc: 'single-threaded, plus other aids to debugging (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: silent
  doc: 'suppress cmd reporting on stderr (default: False)'
  type: boolean
  inputBinding:
    prefix: --silent
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_ovlp_stats
