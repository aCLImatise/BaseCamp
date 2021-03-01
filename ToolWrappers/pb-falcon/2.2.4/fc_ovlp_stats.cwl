class: CommandLineTool
id: fc_ovlp_stats.cwl
inputs:
- id: in_n_core
  doc: 'number of processes used for generating consensus; 0 for main process only
    (default: 4)'
  type: long?
  inputBinding:
    prefix: --n-core
- id: in_fof_n
  doc: 'file contains the path of all LAS file to be processed in parallel (default:
    None)'
  type: File?
  inputBinding:
    prefix: --fofn
- id: in_min_len
  doc: 'min length of the reads (default: 2500)'
  type: long?
  inputBinding:
    prefix: --min-len
- id: in_db_fn
  doc: 'DAZZLER DB of preads (default: ./1-preads_ovl/preads.db)'
  type: long?
  inputBinding:
    prefix: --db-fn
- id: in_stream
  doc: 'stream from LA4Falcon, instead of slurping all at once; can save memory for
    large data (default: False)'
  type: boolean?
  inputBinding:
    prefix: --stream
- id: in_debug
  doc: 'single-threaded, plus other aids to debugging (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_silent
  doc: 'suppress cmd reporting on stderr (default: False)'
  type: boolean?
  inputBinding:
    prefix: --silent
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fc_ovlp_stats
