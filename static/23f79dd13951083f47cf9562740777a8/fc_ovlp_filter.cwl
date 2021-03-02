class: CommandLineTool
id: fc_ovlp_filter.cwl
inputs:
- id: in_n_core
  doc: "number of processes used for generating consensus; 0\nfor main process only\
    \ (default=4)"
  type: long?
  inputBinding:
    prefix: --n_core
- id: in_fof_n
  doc: "file contains the path of all LAS file to be processed\nin parallel"
  type: File?
  inputBinding:
    prefix: --fofn
- id: in_db
  doc: read db file path
  type: File?
  inputBinding:
    prefix: --db
- id: in_max_diff
  doc: max difference of 5' and 3' coverage
  type: long?
  inputBinding:
    prefix: --max_diff
- id: in_max_cov
  doc: max coverage of 5' or 3' coverage
  type: long?
  inputBinding:
    prefix: --max_cov
- id: in_min_cov
  doc: min coverage of 5' or 3' coverage
  type: long?
  inputBinding:
    prefix: --min_cov
- id: in_min_len
  doc: min length of the reads (default=2500)
  type: long?
  inputBinding:
    prefix: --min_len
- id: in_best_n
  doc: "output at least best n overlaps on 5' or 3' ends if\npossible (default=10)"
  type: long?
  inputBinding:
    prefix: --bestn
- id: in_stream
  doc: "stream from LA4Falcon, instead of slurping all at once;\ncan save memory for\
    \ large data"
  type: boolean?
  inputBinding:
    prefix: --stream
- id: in_debug
  doc: single-threaded, plus other aids to debugging
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_silent
  doc: suppress cmd reporting on stderr
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
- fc_ovlp_filter
