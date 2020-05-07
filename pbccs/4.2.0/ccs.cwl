class: CommandLineTool
id: ccs.cwl
inputs:
- id: min_passes
  doc: INT    Minimum number of full-length subreads required to generate CCS for
    a ZMW. [3]
  type: boolean
  inputBinding:
    prefix: --min-passes
- id: min_snr
  doc: FLOAT  Minimum SNR of subreads to use for generating CCS [2.5]
  type: boolean
  inputBinding:
    prefix: --min-snr
- id: min_length
  doc: INT    Minimum draft length before polishing. [10]
  type: boolean
  inputBinding:
    prefix: --min-length
- id: max_length
  doc: INT    Maximum draft length before polishing. [50000]
  type: boolean
  inputBinding:
    prefix: --max-length
- id: chunk
  doc: 'STR    Operate on a single chunk. Format i/N, where i in [1,N]. Examples:
    3/24 or 9/9'
  type: boolean
  inputBinding:
    prefix: --chunk
- id: max_chunks
  doc: Determine maximum number of chunks.
  type: boolean
  inputBinding:
    prefix: --max-chunks
- id: model_path
  doc: STR    Path to a chemistry model file or directory containing model files.
  type: boolean
  inputBinding:
    prefix: --model-path
- id: model_spec
  doc: STR    Name of chemistry or model to use, overriding default selection.
  type: boolean
  inputBinding:
    prefix: --model-spec
- id: by_strand
  doc: Generate a consensus for each strand.
  type: boolean
  inputBinding:
    prefix: --by-strand
- id: skip_polish
  doc: Only output the initial draft template (faster, less accurate).
  type: boolean
  inputBinding:
    prefix: --skip-polish
- id: min_rq
  doc: FLOAT  Minimum predicted accuracy in [0, 1]. [0.99]
  type: boolean
  inputBinding:
    prefix: --min-rq
- id: report_file
  doc: FILE   Where to write the results report. [ccs_report.txt]
  type: boolean
  inputBinding:
    prefix: --report-file
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
outputs: []
cwlVersion: v1.1
baseCommand:
- ccs
