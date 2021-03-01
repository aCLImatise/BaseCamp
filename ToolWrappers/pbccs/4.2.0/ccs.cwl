class: CommandLineTool
id: ccs.cwl
inputs:
- id: in_min_passes
  doc: "INT    Minimum number of full-length subreads\nrequired to generate CCS for\
    \ a ZMW. [3]"
  type: boolean?
  inputBinding:
    prefix: --min-passes
- id: in_min_snr
  doc: "FLOAT  Minimum SNR of subreads to use for\ngenerating CCS [2.5]"
  type: boolean?
  inputBinding:
    prefix: --min-snr
- id: in_min_length
  doc: "INT    Minimum draft length before polishing.\n[10]"
  type: boolean?
  inputBinding:
    prefix: --min-length
- id: in_max_length
  doc: "INT    Maximum draft length before polishing.\n[50000]"
  type: boolean?
  inputBinding:
    prefix: --max-length
- id: in_chunk
  doc: "STR    Operate on a single chunk. Format i/N,\nwhere i in [1,N]. Examples:\
    \ 3/24 or 9/9"
  type: boolean?
  inputBinding:
    prefix: --chunk
- id: in_max_chunks
  doc: Determine maximum number of chunks.
  type: boolean?
  inputBinding:
    prefix: --max-chunks
- id: in_model_path
  doc: "STR    Path to a chemistry model file or\ndirectory containing model files."
  type: boolean?
  inputBinding:
    prefix: --model-path
- id: in_model_spec
  doc: "STR    Name of chemistry or model to use,\noverriding default selection."
  type: boolean?
  inputBinding:
    prefix: --model-spec
- id: in_by_strand
  doc: Generate a consensus for each strand.
  type: boolean?
  inputBinding:
    prefix: --by-strand
- id: in_skip_polish
  doc: "Only output the initial draft template\n(faster, less accurate)."
  type: boolean?
  inputBinding:
    prefix: --skip-polish
- id: in_min_rq
  doc: "FLOAT  Minimum predicted accuracy in [0, 1].\n[0.99]"
  type: boolean?
  inputBinding:
    prefix: --min-rq
- id: in_report_file
  doc: "FILE   Where to write the results report.\n[ccs_report.txt]"
  type: boolean?
  inputBinding:
    prefix: --report-file
- id: in_num_threads
  doc: "INT    Number of threads to use, 0 means\nautodetection. [0]"
  type: boolean?
  inputBinding:
    prefix: --num-threads
- id: in_log_level
  doc: "STR    Set log level. Valid choices: (TRACE,\nDEBUG, INFO, WARN, FATAL). [WARN]"
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: FILE   Log to a file, instead of stderr.
  type: boolean?
  inputBinding:
    prefix: --log-file
- id: in_in_dot_sub_reads_dot_bam_vertical_line_xml
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_sub_reads
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ccs
