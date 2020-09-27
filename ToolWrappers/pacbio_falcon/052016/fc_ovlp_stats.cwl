class: CommandLineTool
id: fc_ovlp_stats.cwl
inputs:
- id: in_n_core
  doc: "number of processes used for generating consensus; 0 for\nmain process only\
    \ (default=4)"
  type: long
  inputBinding:
    prefix: --n_core
- id: in_fof_n
  doc: file contains the path of all LAS file to be processed in
  type: File
  inputBinding:
    prefix: --fofn
- id: in_stream
  doc: "stream from LA4Falcon, instead of slurping all at once;\ncan save memory for\
    \ large data"
  type: boolean
  inputBinding:
    prefix: --stream
- id: in_debug
  doc: single-threaded, plus other aids to debugging
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_silent
  doc: suppress cmd reporting on stderr
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_min_len
  doc: ''
  type: long
  inputBinding:
    prefix: --min_len
- id: in_parallel
  doc: --min_len MIN_LEN  min length of the reads
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fc_ovlp_stats
