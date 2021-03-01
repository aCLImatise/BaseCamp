class: CommandLineTool
id: isoseq3_collapse.cwl
inputs:
- id: in_min_aln_coverage
  doc: FLOAT  Ignore alignments with less than minimum query read coverage. [0.99]
  type: boolean?
  inputBinding:
    prefix: --min-aln-coverage
- id: in_min_aln_identity
  doc: FLOAT  Ignore alignments with less than minimum alignment identity. [0.95]
  type: boolean?
  inputBinding:
    prefix: --min-aln-identity
- id: in_max_fuzzy_junction
  doc: INT    Ignore mismatches or indels shorter than or equal to N. [5]
  type: boolean?
  inputBinding:
    prefix: --max-fuzzy-junction
- id: in_num_threads
  doc: INT    Number of threads to use, 0 means autodetection. [0]
  type: boolean?
  inputBinding:
    prefix: --num-threads
- id: in_log_level
  doc: 'STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: FILE   Log to a file, instead of stderr.
  type: boolean?
  inputBinding:
    prefix: --log-file
- id: in_out_dot_fast_q
  doc: STR    Collapsed transcripts in FASTQ
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- isoseq3
- collapse
