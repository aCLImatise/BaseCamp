class: CommandLineTool
id: digestiflow_cli_ingest.cwl
inputs:
- id: in_analyze_adapters
  doc: Read adapters from binary base call files
  type: boolean?
  inputBinding:
    prefix: --analyze-adapters
- id: in_dry_run
  doc: Do not perform any modifying operations
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_force_analyze_adapters
  doc: "Force analysis of adapters even if adapter histogram information is present\
    \ for all\nindex reads."
  type: boolean?
  inputBinding:
    prefix: --force-analyze-adapters
- id: in_log_token
  doc: "Print authentation token to log file (useful for debugging, possible leaking\n\
    security issue)"
  type: boolean?
  inputBinding:
    prefix: --log-token
- id: in_no_register
  doc: Whether or not to register flow cell via the API.
  type: boolean?
  inputBinding:
    prefix: --no-register
- id: in_no_update
  doc: Whether or not to update the flow cell via the API
  type: boolean?
  inputBinding:
    prefix: --no-update
- id: in_quiet
  doc: Decrease verbosity
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_update_if_state_final
  doc: "Update flow cell information sequencing is in a final state (e.g., completed\
    \ or\nfailed).  Updating index histograms is separate from this."
  type: boolean?
  inputBinding:
    prefix: --update-if-state-final
- id: in_verbose
  doc: Increase verbosity
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_min_index_fraction
  doc: Minimal fraction of reads that must show index for index histogram to be
  type: long?
  inputBinding:
    prefix: --min-index-fraction
- id: in_sample_reads_per_tile
  doc: Number of reads to sample per tile
  type: long?
  inputBinding:
    prefix: --sample-reads-per-tile
- id: in_threads
  doc: 'Number of additional threads to use for (de)compression in I/O. [default:
    0]'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_computed
  doc: --project-uuid <PROJECT_UUID>      The UUID of the project to write to.
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
- digestiflow-cli
- ingest
