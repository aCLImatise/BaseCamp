class: CommandLineTool
id: illumina_dump.cwl
inputs:
- id: in_accession
  doc: "Replaces accession derived from <path> in\nfilename(s) and deflines (only\
    \ for single\ntable dump)"
  type: File
  inputBinding:
    prefix: --accession
- id: in_outdir
  doc: "Output directory, default is working\ndirectory '.' )"
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_stdout
  doc: "Output to stdout, all split data become\njoined into single stream"
  type: boolean
  inputBinding:
    prefix: --stdout
- id: in_ngc
  doc: <path> to ngc file
  type: File
  inputBinding:
    prefix: --ngc
- id: in_gzip
  doc: 'Compress output using gzip: deprecated, not'
  type: boolean
  inputBinding:
    prefix: --gzip
- id: in_min_spot_id
  doc: Minimum spot id
  type: string
  inputBinding:
    prefix: --minSpotId
- id: in_max_spot_id
  doc: Maximum spot id
  type: string
  inputBinding:
    prefix: --maxSpotId
- id: in_spot_group
  doc: Split into files by SPOT_GROUP (member name)
  type: boolean
  inputBinding:
    prefix: --spot-group
- id: in_spot_groups
  doc: '<[list]>           Filter by SPOT_GROUP (member): name[,...]'
  type: boolean
  inputBinding:
    prefix: --spot-groups
- id: in_read_filter
  doc: "<[filter]>      Split into files by READ_FILTER value\noptionally filter by\
    \ value:\npass|reject|criteria|redacted"
  type: boolean
  inputBinding:
    prefix: --read-filter
- id: in_group_in_dirs
  doc: Split into subdirectories instead of files
  type: boolean
  inputBinding:
    prefix: --group-in-dirs
- id: in_keep_empty_files
  doc: Do not delete empty files
  type: boolean
  inputBinding:
    prefix: --keep-empty-files
- id: in_table
  doc: "Table name within cSRA object, default is\n\"SEQUENCE\""
  type: string
  inputBinding:
    prefix: --table
- id: in_disable_multithreading
  doc: disable multithreading
  type: boolean
  inputBinding:
    prefix: --disable-multithreading
- id: in_log_level
  doc: "Logging level as number or enum string One\nof (fatal|sys|int|err|warn|info)\
    \ or (0-5)\nCurrent/default is warn"
  type: long
  inputBinding:
    prefix: --log-level
- id: in_verbose
  doc: "Increase the verbosity level of the program\nUse multiple times for more verbosity"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_ncbi_error_report
  doc: "Control program execution environment\nreport generation (if implemented).\
    \ One of\n(never|error|always). Default is error"
  type: boolean
  inputBinding:
    prefix: --ncbi_error_report
- id: in_legacy_report
  doc: use legacy style 'Written spots' for tool
  type: boolean
  inputBinding:
    prefix: --legacy-report
- id: in_qual_one
  doc: "Output QUALITY, whole spot (1) or split by\nreads (2): \"qcal\", default is\
    \ 1"
  type: long
  inputBinding:
    prefix: --qual1
- id: in_qual_four
  doc: 'Output full QUALITY: "prb", default is off'
  type: boolean
  inputBinding:
    prefix: --qual4
- id: in_intensity
  doc: "Output INTENSITY, if present: \"int\",\ndefault is off"
  type: boolean
  inputBinding:
    prefix: --intensity
- id: in_noise
  doc: 'Output NOISE, if present: "nse", default is'
  type: boolean
  inputBinding:
    prefix: --noise
- id: in_q_seq
  doc: "Output QSEQ format: whole spot (1) or split\nby reads: \"qseq\", default is\
    \ off"
  type: long
  inputBinding:
    prefix: --qseq
- id: in_bzip_two
  doc: ''
  type: boolean
  inputBinding:
    prefix: --bzip2
- id: in_recommended
  doc: '--bzip2                          Compress output using bzip2: deprecated, '
  type: string
  inputBinding:
    position: 0
- id: in_off
  doc: '-s|--signal                      Output SIGNAL, if present: "sig2", default '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "Output directory, default is working\ndirectory '.' )"
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- illumina-dump
