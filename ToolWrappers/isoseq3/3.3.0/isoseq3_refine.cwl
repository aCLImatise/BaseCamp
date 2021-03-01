class: CommandLineTool
id: isoseq3_refine.cwl
inputs:
- id: in_min_polya_length
  doc: INT   Minimum poly(A) tail length. [20]
  type: boolean?
  inputBinding:
    prefix: --min-polya-length
- id: in_require_polya
  doc: Require FL reads to have a poly(A) tail and remove it.
  type: boolean?
  inputBinding:
    prefix: --require-polya
- id: in_num_threads
  doc: INT   Number of threads to use, 0 means autodetection. [0]
  type: boolean?
  inputBinding:
    prefix: --num-threads
- id: in_log_level
  doc: 'STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: FILE  Log to a file, instead of stderr.
  type: boolean?
  inputBinding:
    prefix: --log-file
- id: in_verbose
  doc: Use verbose output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_fl_ncdot_bam_vertical_line_xml
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_iso_seq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_str
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_refine
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
- id: in_ccs_dot_demux_dot_bam_vertical_line_xml
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_demux_ed
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_fl_nc
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_primer
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_primer_dot_fast_a_vertical_line_xml
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_ccs
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_barcode_set
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_or
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_consensus_read_set
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- isoseq3
- refine
