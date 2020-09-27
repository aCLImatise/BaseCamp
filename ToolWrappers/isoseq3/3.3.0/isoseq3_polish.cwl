class: CommandLineTool
id: isoseq3_polish.cwl
inputs:
- id: in_rq_cut_off
  doc: FLOAT  RQ cutoff for fastx output. [0.99]
  type: boolean
  inputBinding:
    prefix: --rq-cutoff
- id: in_coverage
  doc: INT    Maximum number of subreads used for polishing. [60]
  type: boolean
  inputBinding:
    prefix: --coverage
- id: in_num_threads
  doc: INT    Number of threads to use, 0 means autodetection. [0]
  type: boolean
  inputBinding:
    prefix: --num-threads
- id: in_log_level
  doc: 'STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: FILE   Log to a file, instead of stderr.
  type: boolean
  inputBinding:
    prefix: --log-file
- id: in_verbose
  doc: Use verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_iso_seq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_polished_dot_bam_vertical_line_xml
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_str
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_polish
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_unpolished_dot_bam_vertical_line_xml
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_polished
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_sub_read
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_sub_reads_dot_bam_vertical_line_xml
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_unpolished
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_or
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_sub_read_set
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_transcript_set
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- isoseq3
- polish
