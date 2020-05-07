class: CommandLineTool
id: digestiflow_cli_ingest.cwl
inputs:
- id: analyze_adapters
  doc: Read adapters from binary base call files
  type: boolean
  inputBinding:
    prefix: --analyze-adapters
- id: dry_run
  doc: Do not perform any modifying operations
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: force_analyze_adapters
  doc: Force analysis of adapters even if adapter histogram information is present
    for all index reads.
  type: boolean
  inputBinding:
    prefix: --force-analyze-adapters
- id: log_token
  doc: Print authentation token to log file (useful for debugging, possible leaking
    security issue)
  type: boolean
  inputBinding:
    prefix: --log-token
- id: no_register
  doc: Whether or not to register flow cell via the API.
  type: boolean
  inputBinding:
    prefix: --no-register
- id: no_update
  doc: Whether or not to update the flow cell via the API
  type: boolean
  inputBinding:
    prefix: --no-update
- id: quiet
  doc: Decrease verbosity
  type: boolean
  inputBinding:
    prefix: --quiet
- id: update_if_state_final
  doc: Update flow cell information sequencing is in a final state (e.g., completed
    or failed).  Updating index histograms is separate from this.
  type: boolean
  inputBinding:
    prefix: --update-if-state-final
- id: verbose
  doc: Increase verbosity
  type: boolean
  inputBinding:
    prefix: --verbose
- id: min_index_fraction
  doc: Minimal fraction of reads that must show index for index histogram to be computed
  type: string
  inputBinding:
    prefix: --min-index-fraction
- id: project_uuid
  doc: The UUID of the project to write to.
  type: string
  inputBinding:
    prefix: --project-uuid
- id: sample_reads_per_tile
  doc: Number of reads to sample per tile
  type: string
  inputBinding:
    prefix: --sample-reads-per-tile
- id: threads
  doc: 'Number of additional threads to use for (de)compression in I/O. [default:
    0]'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- digestiflow-cli
- ingest
