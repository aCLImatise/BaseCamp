class: CommandLineTool
id: abi_dump.2.cwl
inputs:
- id: in_accession
  doc: "Replaces accession derived from <path> in\nfilename(s) and deflines (only\
    \ for single\ntable dump)"
  type: File?
  inputBinding:
    prefix: --accession
- id: in_outdir
  doc: "Output directory, default is working\ndirectory '.' )"
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_stdout
  doc: "Output to stdout, all split data become\njoined into single stream"
  type: boolean?
  inputBinding:
    prefix: --stdout
- id: in_ngc
  doc: <path> to ngc file
  type: File?
  inputBinding:
    prefix: --ngc
- id: in_gzip
  doc: 'Compress output using gzip: deprecated, not'
  type: boolean?
  inputBinding:
    prefix: --gzip
- id: in_min_spot_id
  doc: Minimum spot id
  type: string?
  inputBinding:
    prefix: --minSpotId
- id: in_max_spot_id
  doc: Maximum spot id
  type: string?
  inputBinding:
    prefix: --maxSpotId
- id: in_spot_group
  doc: Split into files by SPOT_GROUP (member name)
  type: boolean?
  inputBinding:
    prefix: --spot-group
- id: in_spot_groups
  doc: '<[list]>           Filter by SPOT_GROUP (member): name[,...]'
  type: boolean?
  inputBinding:
    prefix: --spot-groups
- id: in_read_filter
  doc: "<[filter]>      Split into files by READ_FILTER value\noptionally filter by\
    \ value:\npass|reject|criteria|redacted"
  type: boolean?
  inputBinding:
    prefix: --read-filter
- id: in_group_in_dirs
  doc: Split into subdirectories instead of files
  type: boolean?
  inputBinding:
    prefix: --group-in-dirs
- id: in_keep_empty_files
  doc: Do not delete empty files
  type: boolean?
  inputBinding:
    prefix: --keep-empty-files
- id: in_table
  doc: "Table name within cSRA object, default is\n\"SEQUENCE\""
  type: string?
  inputBinding:
    prefix: --table
- id: in_disable_multithreading
  doc: disable multithreading
  type: boolean?
  inputBinding:
    prefix: --disable-multithreading
- id: in_log_level
  doc: "Logging level as number or enum string One\nof (fatal|sys|int|err|warn|info)\
    \ or (0-5)\nCurrent/default is warn"
  type: long?
  inputBinding:
    prefix: --log-level
- id: in_verbose
  doc: "Increase the verbosity level of the program\nUse multiple times for more verbosity"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_ncbi_error_report
  doc: "Control program execution environment\nreport generation (if implemented).\
    \ One of\n(never|error|always). Default is error"
  type: boolean?
  inputBinding:
    prefix: --ncbi_error_report
- id: in_legacy_report
  doc: use legacy style 'Written spots' for tool
  type: boolean?
  inputBinding:
    prefix: --legacy-report
- id: in_no_clip
  doc: Do not clip quality left and right for spot
  type: boolean?
  inputBinding:
    prefix: --noclip
- id: in_orig_fmt
  doc: Excludes SRR accession on defline
  type: boolean?
  inputBinding:
    prefix: --origfmt
- id: in_no_dot_reads
  doc: Do not output reads consisting mostly of
  type: boolean?
  inputBinding:
    prefix: --noDotReads
- id: in_bzip_two
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --bzip2
- id: in_recommended
  doc: '--bzip2                          Compress output using bzip2: deprecated, '
  type: string
  inputBinding:
    position: 0
- id: in_dots
  doc: 'abi-dump.2 : 2.10.8'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "Output directory, default is working\ndirectory '.' )"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- abi-dump.2
