class: CommandLineTool
id: ../../../isoseq3_polish.cwl
inputs:
- id: rq_cut_off
  doc: FLOAT  RQ cutoff for fastx output. [0.99]
  type: boolean
  inputBinding:
    prefix: --rq-cutoff
- id: coverage
  doc: INT    Maximum number of subreads used for polishing. [60]
  type: boolean
  inputBinding:
    prefix: --coverage
- id: num_threads
  doc: INT    Number of threads to use, 0 means autodetection. [0]
  type: boolean
  inputBinding:
    prefix: --num-threads
- id: log_level
  doc: 'STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean
  inputBinding:
    prefix: --log-level
- id: log_file
  doc: FILE   Log to a file, instead of stderr.
  type: boolean
  inputBinding:
    prefix: --log-file
- id: verbose
  doc: Use verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: iso_seq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: polish
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: unpolished_dot_bam_vertical_line_xml
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: sub_reads_dot_bam_vertical_line_xml
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: polished_dot_bam_vertical_line_xml
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- isoseq3
- polish
