class: CommandLineTool
id: bamsieve.cwl
inputs:
- id: in_log_file
  doc: "Write the log to file. Default(None) will write to\nstdout. (default: None)"
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_log_level
  doc: 'Set log level (default: WARN)'
  type: string?
  inputBinding:
    prefix: --log-level
- id: in_debug
  doc: 'Alias for setting log level to DEBUG (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: "Alias for setting log level to CRITICAL to suppress\noutput. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: 'Set the verbosity level. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_show_z_mws
  doc: 'Print a list of ZMWs and exit (default: False)'
  type: boolean?
  inputBinding:
    prefix: --show-zmws
- id: in_whitelist
  doc: "Comma-separated list of ZMWs, or file containing\nwhitelist of one hole number\
    \ per line, or BAM/DataSet\nfile from which to extract ZMWs (default: None)"
  type: long?
  inputBinding:
    prefix: --whitelist
- id: in_blacklist
  doc: "Opposite of --whitelist, specifies ZMWs to discard\n(default: None)"
  type: string?
  inputBinding:
    prefix: --blacklist
- id: in_sub_reads
  doc: "If set, the whitelist or blacklist will be assumed to\ncontain one subread\
    \ name per line, or a BAM/DataSet\nfile from which to extract subreads (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --subreads
- id: in_percentage
  doc: "If you prefer to recover a percentage of a SMRTcell\nrather than a specific\
    \ list of reads specify that\npercentage (range 0-100) here (default: None)"
  type: long?
  inputBinding:
    prefix: --percentage
- id: in_count
  doc: "Recover a specific number of ZMWs picked at random\n(default: None)"
  type: long?
  inputBinding:
    prefix: --count
- id: in_seed
  doc: "Random seed for selecting a percentage of reads\n(default: None)"
  type: string?
  inputBinding:
    prefix: --seed
- id: in_ignore_metadata
  doc: 'Discard input DataSet metadata (default: False)'
  type: boolean?
  inputBinding:
    prefix: --ignore-metadata
- id: in_relative
  doc: 'Make external resource paths relative (default: False)'
  type: boolean?
  inputBinding:
    prefix: --relative
- id: in_anonymize
  doc: 'Randomize sequences for privacy (default: False)'
  type: boolean?
  inputBinding:
    prefix: --anonymize
- id: in_barcodes
  doc: "Indicates that the whitelist or blacklist contains\nbarcode indices instead\
    \ of ZMW numbers (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --barcodes
- id: in_sample_scraps
  doc: "If enabled, --percentage and --count will include hole\nnumbers from scraps\
    \ BAM files when picking a random\nsample (default is to sample only ZMWs present\
    \ in\nsubreads BAM). (default: False)"
  type: boolean?
  inputBinding:
    prefix: --sample-scraps
- id: in_keep_uuid
  doc: "If enabled, the UUID from the input dataset will be\nused for the output as\
    \ well. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --keep-uuid
- id: in_min_adapters
  doc: "Minimum number of adapters to filter for (default:\nNone)\n"
  type: long?
  inputBinding:
    prefix: --min-adapters
- id: in_input_bam
  doc: Input BAM or DataSet from which reads will be read
  type: string
  inputBinding:
    position: 0
- id: in_output_bam
  doc: "Output BAM or DataSet to which filtered reads will be\nwritten (default: None)"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bamsieve
