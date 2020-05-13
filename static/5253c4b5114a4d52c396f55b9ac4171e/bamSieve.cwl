class: CommandLineTool
id: bamSieve.cwl
inputs:
- id: input_bam
  doc: Input BAM or DataSet from which reads will be read
  type: string
  inputBinding:
    position: 0
- id: output_bam
  doc: 'Output BAM or DataSet to which filtered reads will be written (default: None)'
  type: string
  inputBinding:
    position: 1
- id: log_file
  doc: 'Write the log to file. Default(None) will write to stdout. (default: None)'
  type: string
  inputBinding:
    prefix: --log-file
- id: log_level
  doc: 'Set log level (default: WARN)'
  type: string
  inputBinding:
    prefix: --log-level
- id: debug
  doc: 'Alias for setting log level to DEBUG (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: quiet
  doc: 'Alias for setting log level to CRITICAL to suppress output. (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: 'Set the verbosity level. (default: None)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: show_z_mws
  doc: 'Print a list of ZMWs and exit (default: False)'
  type: boolean
  inputBinding:
    prefix: --show-zmws
- id: whitelist
  doc: 'Comma-separated list of ZMWs, or file containing whitelist of one hole number
    per line, or BAM/DataSet file from which to extract ZMWs (default: None)'
  type: string
  inputBinding:
    prefix: --whitelist
- id: blacklist
  doc: 'Opposite of --whitelist, specifies ZMWs to discard (default: None)'
  type: string
  inputBinding:
    prefix: --blacklist
- id: percentage
  doc: 'If you prefer to recover a percentage of a SMRTcell rather than a specific
    list of reads specify that percentage (range 0-100) here (default: None)'
  type: string
  inputBinding:
    prefix: --percentage
- id: count
  doc: 'Recover a specific number of ZMWs picked at random (default: None)'
  type: string
  inputBinding:
    prefix: --count
- id: seed
  doc: 'Random seed for selecting a percentage of reads (default: None)'
  type: string
  inputBinding:
    prefix: --seed
- id: ignore_metadata
  doc: 'Discard input DataSet metadata (default: False)'
  type: boolean
  inputBinding:
    prefix: --ignore-metadata
- id: relative
  doc: 'Make external resource paths relative (default: False)'
  type: boolean
  inputBinding:
    prefix: --relative
- id: anonymize
  doc: 'Randomize sequences for privacy (default: False)'
  type: boolean
  inputBinding:
    prefix: --anonymize
- id: barcodes
  doc: 'Indicates that the whitelist or blacklist contains barcode indices instead
    of ZMW numbers (default: False)'
  type: boolean
  inputBinding:
    prefix: --barcodes
- id: sample_scraps
  doc: 'If enabled, --percentage and --count will include hole numbers from scraps
    BAM files when picking a random sample (default is to sample only ZMWs present
    in subreads BAM). (default: False)'
  type: boolean
  inputBinding:
    prefix: --sample-scraps
- id: keep_uuid
  doc: 'If enabled, the UUID from the input dataset will be used for the output as
    well. (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep-uuid
outputs: []
cwlVersion: v1.1
baseCommand:
- bamSieve
