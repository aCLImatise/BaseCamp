class: CommandLineTool
id: fc_ovlp_filter.cwl
inputs:
- id: n_core
  doc: number of processes used for generating consensus; 0 for main process only
    (default=4)
  type: string
  inputBinding:
    prefix: --n_core
- id: fof_n
  doc: file contains the path of all LAS file to be processed in parallel
  type: string
  inputBinding:
    prefix: --fofn
- id: db
  doc: read db file path
  type: string
  inputBinding:
    prefix: --db
- id: max_diff
  doc: max difference of 5' and 3' coverage
  type: long
  inputBinding:
    prefix: --max_diff
- id: max_cov
  doc: max coverage of 5' or 3' coverage
  type: long
  inputBinding:
    prefix: --max_cov
- id: min_cov
  doc: min coverage of 5' or 3' coverage
  type: long
  inputBinding:
    prefix: --min_cov
- id: min_len
  doc: min length of the reads (default=2500)
  type: long
  inputBinding:
    prefix: --min_len
- id: best_n
  doc: output at least best n overlaps on 5' or 3' ends if possible (default=10)
  type: string
  inputBinding:
    prefix: --bestn
- id: stream
  doc: stream from LA4Falcon, instead of slurping all at once; can save memory for
    large data
  type: boolean
  inputBinding:
    prefix: --stream
- id: debug
  doc: single-threaded, plus other aids to debugging
  type: boolean
  inputBinding:
    prefix: --debug
- id: silent
  doc: suppress cmd reporting on stderr
  type: boolean
  inputBinding:
    prefix: --silent
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_ovlp_filter
