class: CommandLineTool
id: fc_rr_ctg_track.cwl
inputs:
- id: n_core
  doc: 'number of processes used for for tracking reads; 0 for main process only (default:
    4)'
  type: string
  inputBinding:
    prefix: --n_core
- id: base_dir
  doc: 'the base working dir of a FALCON assembly (default: ./)'
  type: string
  inputBinding:
    prefix: --base_dir
- id: min_len
  doc: 'min length of the reads (default: 2500)'
  type: long
  inputBinding:
    prefix: --min_len
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
- id: best_n
  doc: 'keep best n hits (default: 40)'
  type: string
  inputBinding:
    prefix: --bestn
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_rr_ctg_track
