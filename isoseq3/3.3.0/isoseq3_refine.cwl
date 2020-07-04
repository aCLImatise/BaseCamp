class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/isoseq3_refine.cwl
inputs:
- id: min_polya_length
  doc: INT   Minimum poly(A) tail length. [20]
  type: boolean
  inputBinding:
    prefix: --min-polya-length
- id: require_polya
  doc: Require FL reads to have a poly(A) tail and remove it.
  type: boolean
  inputBinding:
    prefix: --require-polya
- id: num_threads
  doc: INT   Number of threads to use, 0 means autodetection. [0]
  type: boolean
  inputBinding:
    prefix: --num-threads
- id: log_level
  doc: 'STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean
  inputBinding:
    prefix: --log-level
- id: log_file
  doc: FILE  Log to a file, instead of stderr.
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
- id: refine
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ccs_dot_demux_dot_bam_vertical_line_xml
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: primer_dot_fast_a_vertical_line_xml
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: fl_ncdot_bam_vertical_line_xml
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- isoseq3
- refine
