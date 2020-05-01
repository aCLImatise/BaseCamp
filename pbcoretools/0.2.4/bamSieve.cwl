#!/usr/bin/env cwl-runner

baseCommand:
- bamSieve
class: CommandLineTool
cwlVersion: v1.0
id: bamsieve
inputs:
- doc: Input BAM or DataSet from which reads will be read
  id: input_bam
  inputBinding:
    position: 0
  type: string
- doc: 'Output BAM or DataSet to which filtered reads will be written (default: None)'
  id: output_bam
  inputBinding:
    position: 1
  type: string
- doc: 'Write the log to file. Default(None) will write to stdout. (default: None)'
  id: log_file
  inputBinding:
    prefix: --log-file
  type: string
- doc: 'Set log level (default: WARN)'
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: 'Alias for setting log level to DEBUG (default: False)'
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: 'Alias for setting log level to CRITICAL to suppress output. (default: False)'
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Set the verbosity level. (default: None)'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'Print a list of ZMWs and exit (default: False)'
  id: show_z_mws
  inputBinding:
    prefix: --show-zmws
  type: boolean
- doc: 'Comma-separated list of ZMWs, or file containing whitelist of one hole number
    per line, or BAM/DataSet file from which to extract ZMWs (default: None)'
  id: whitelist
  inputBinding:
    prefix: --whitelist
  type: string
- doc: 'Opposite of --whitelist, specifies ZMWs to discard (default: None)'
  id: blacklist
  inputBinding:
    prefix: --blacklist
  type: string
- doc: 'If you prefer to recover a percentage of a SMRTcell rather than a specific
    list of reads specify that percentage (range 0-100) here (default: None)'
  id: percentage
  inputBinding:
    prefix: --percentage
  type: string
- doc: 'Recover a specific number of ZMWs picked at random (default: None)'
  id: count
  inputBinding:
    prefix: --count
  type: string
- doc: 'Random seed for selecting a percentage of reads (default: None)'
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: 'Discard input DataSet metadata (default: False)'
  id: ignore_metadata
  inputBinding:
    prefix: --ignore-metadata
  type: boolean
- doc: 'Make external resource paths relative (default: False)'
  id: relative
  inputBinding:
    prefix: --relative
  type: boolean
- doc: 'Randomize sequences for privacy (default: False)'
  id: anonymize
  inputBinding:
    prefix: --anonymize
  type: boolean
- doc: 'Indicates that the whitelist or blacklist contains barcode indices instead
    of ZMW numbers (default: False)'
  id: barcodes
  inputBinding:
    prefix: --barcodes
  type: boolean
- doc: 'If enabled, --percentage and --count will include hole numbers from scraps
    BAM files when picking a random sample (default is to sample only ZMWs present
    in subreads BAM). (default: False)'
  id: sample_scraps
  inputBinding:
    prefix: --sample-scraps
  type: boolean
- doc: 'If enabled, the UUID from the input dataset will be used for the output as
    well. (default: False)'
  id: keep_uuid
  inputBinding:
    prefix: --keep-uuid
  type: boolean
