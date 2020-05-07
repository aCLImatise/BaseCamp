class: CommandLineTool
id: abi_dump.2.10.3.cwl
inputs:
- id: accession
  doc: 'Replaces accession derived from <path> in  filename(s) and deflines (only
    for single  table dump) '
  type: string
  inputBinding:
    prefix: --accession
- id: outdir
  doc: "Output directory, default is working  directory '.' ) "
  type: File
  inputBinding:
    prefix: --outdir
- id: stdout
  doc: 'Output to stdout, all split data become  joined into single stream '
  type: boolean
  inputBinding:
    prefix: --stdout
- id: ngc
  doc: '<path> to ngc file '
  type: File
  inputBinding:
    prefix: --ngc
- id: gzip
  doc: 'Compress output using gzip: deprecated, not  recommended '
  type: boolean
  inputBinding:
    prefix: --gzip
- id: bzip2
  doc: 'Compress output using bzip2: deprecated,  not recommended '
  type: boolean
  inputBinding:
    prefix: --bzip2
- id: min_spot_id
  doc: 'Minimum spot id '
  type: string
  inputBinding:
    prefix: --minSpotId
- id: max_spot_id
  doc: 'Maximum spot id '
  type: string
  inputBinding:
    prefix: --maxSpotId
- id: spot_group
  doc: 'Split into files by SPOT_GROUP (member name) '
  type: boolean
  inputBinding:
    prefix: --spot-group
- id: spot_groups
  doc: '<[list]>           Filter by SPOT_GROUP (member): name[,...] '
  type: boolean
  inputBinding:
    prefix: --spot-groups
- id: read_filter
  doc: '<[filter]>      Split into files by READ_FILTER value  optionally filter by
    value:  pass|reject|criteria|redacted '
  type: boolean
  inputBinding:
    prefix: --read-filter
- id: group_in_dirs
  doc: 'Split into subdirectories instead of files '
  type: boolean
  inputBinding:
    prefix: --group-in-dirs
- id: keep_empty_files
  doc: 'Do not delete empty files '
  type: boolean
  inputBinding:
    prefix: --keep-empty-files
- id: table
  doc: 'Table name within cSRA object, default is  "SEQUENCE" '
  type: string
  inputBinding:
    prefix: --table
- id: disable_multithreading
  doc: 'disable multithreading '
  type: boolean
  inputBinding:
    prefix: --disable-multithreading
- id: log_level
  doc: 'Logging level as number or enum string One  of (fatal|sys|int|err|warn|info)
    or (0-5)  Current/default is warn '
  type: string
  inputBinding:
    prefix: --log-level
- id: verbose
  doc: 'Increase the verbosity level of the program  Use multiple times for more verbosity '
  type: boolean
  inputBinding:
    prefix: --verbose
- id: ncbi_error_report
  doc: 'Control program execution environment  report generation (if implemented).
    One of  (never|error|always). Default is error '
  type: boolean
  inputBinding:
    prefix: --ncbi_error_report
- id: legacy_report
  doc: "use legacy style 'Written spots' for tool "
  type: boolean
  inputBinding:
    prefix: --legacy-report
- id: no_clip
  doc: 'Do not clip quality left and right for spot '
  type: boolean
  inputBinding:
    prefix: --noclip
- id: orig_fmt
  doc: 'Excludes SRR accession on defline '
  type: boolean
  inputBinding:
    prefix: --origfmt
- id: no_dot_reads
  doc: 'Do not output reads consisting mostly of  dots '
  type: boolean
  inputBinding:
    prefix: --noDotReads
outputs: []
cwlVersion: v1.1
baseCommand:
- abi-dump.2.10.3
