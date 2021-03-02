class: CommandLineTool
id: sff_dump.2.cwl
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
- id: in_path_ngc_file
  doc: <path> to ngc file
  type: File?
  inputBinding:
    prefix: --ngc
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
- id: in_table_name_csra
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
- id: in_var_17
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_path
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_21
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_within
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_csra
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_object
  doc: ''
  type: string
  inputBinding:
    position: 4
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
- sff-dump.2
