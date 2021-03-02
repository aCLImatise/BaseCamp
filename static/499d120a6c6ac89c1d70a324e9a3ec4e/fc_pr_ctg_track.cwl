class: CommandLineTool
id: fc_pr_ctg_track.cwl
inputs:
- id: in_n_core
  doc: 'number of processes used for for tracking reads; 0 for main process only (default:
    4)'
  type: long?
  inputBinding:
    prefix: --n_core
- id: in_base_dir
  doc: 'the base working dir of a FALCON assembly (default: ./)'
  type: string?
  inputBinding:
    prefix: --base_dir
- id: in_min_len
  doc: 'min length of the reads (default: 2500)'
  type: long?
  inputBinding:
    prefix: --min_len
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
- id: in_best_n
  doc: 'keep best n hits (default: 40)'
  type: long?
  inputBinding:
    prefix: --bestn
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fc_pr_ctg_track
