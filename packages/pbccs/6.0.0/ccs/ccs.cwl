class: CommandLineTool
id: ccs.cwl
inputs:
- id: in_min_passes
  doc: INT    Minimum number of full-length subreads required to generate CCS for
    a ZMW. [3]
  type: boolean?
  inputBinding:
    prefix: --min-passes
- id: in_min_snr
  doc: FLOAT  Minimum SNR of subreads to use for generating CCS [2.5]
  type: boolean?
  inputBinding:
    prefix: --min-snr
- id: in_top_passes
  doc: INT    Pick at maximum the top N passes for each ZMW. [60]
  type: boolean?
  inputBinding:
    prefix: --top-passes
- id: in_min_length
  doc: INT    Minimum draft length before polishing. [10]
  type: boolean?
  inputBinding:
    prefix: --min-length
- id: in_max_length
  doc: INT    Maximum draft length before polishing. [50000]
  type: boolean?
  inputBinding:
    prefix: --max-length
- id: in_chunk
  doc: 'STR    Operate on a single chunk. Format i/N, where i in [1,N]. Examples:
    3/24 or 9/9'
  type: boolean?
  inputBinding:
    prefix: --chunk
- id: in_max_chunks
  doc: Determine maximum number of chunks.
  type: boolean?
  inputBinding:
    prefix: --max-chunks
- id: in_model_path
  doc: STR    Path to a chemistry model file or directory containing model files.
  type: boolean?
  inputBinding:
    prefix: --model-path
- id: in_model_spec
  doc: STR    Name of chemistry or model to use, overriding default selection.
  type: boolean?
  inputBinding:
    prefix: --model-spec
- id: in_by_strand
  doc: Generate a consensus for each strand.
  type: boolean?
  inputBinding:
    prefix: --by-strand
- id: in_skip_polish
  doc: Only output the initial draft template (faster, less accurate).
  type: boolean?
  inputBinding:
    prefix: --skip-polish
- id: in_all
  doc: Emit all ZMWs.
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_sub_read_fall_back
  doc: Emit a representative subread, instead of the draft consensus, if polishing
    failed.
  type: boolean?
  inputBinding:
    prefix: --subread-fallback
- id: in_all_kinetics
  doc: Calculate mean pulse widths (PW) and interpulse durations (IPD) for every ZMW.
  type: boolean?
  inputBinding:
    prefix: --all-kinetics
- id: in_hifi_kinetics
  doc: Calculate mean pulse widths (PW) and interpulse durations (IPD) for every HiFi
    read.
  type: boolean?
  inputBinding:
    prefix: --hifi-kinetics
- id: in_min_rq
  doc: FLOAT  Minimum predicted accuracy in [0, 1]. [0.99]
  type: boolean?
  inputBinding:
    prefix: --min-rq
- id: in_report_file
  doc: FILE   Where to write the results report.
  type: boolean?
  inputBinding:
    prefix: --report-file
- id: in_report_json
  doc: FILE   Where to write the results report as json.
  type: boolean?
  inputBinding:
    prefix: --report-json
- id: in_metrics_json
  doc: FILE   Where to write the zmw metrics as json.
  type: boolean?
  inputBinding:
    prefix: --metrics-json
- id: in_suppress_reports
  doc: Do not generate report or metric files per default, only those requested.
  type: boolean?
  inputBinding:
    prefix: --suppress-reports
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
- id: in_in_dot_sub_reads_dot_bam_vertical_line_xml
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_dot_ccs_dot_bam_vertical_line_fast_q_do_tgz_vertical_line_xml
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_consensus
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_sub_reads
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_reads
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbccs:6.0.0--1
cwlVersion: v1.1
baseCommand:
- ccs
