class: CommandLineTool
id: fastq_dump_orig.cwl
inputs:
- id: accession
  doc: 'Replaces accession derived from <path> in  filename(s) and deflines (only
    for single  table dump) '
  type: string
  inputBinding:
    prefix: --accession
- id: table
  doc: 'Table name within cSRA object, default is  "SEQUENCE" '
  type: string
  inputBinding:
    prefix: --table
- id: split_spot
  doc: 'Split spots into individual reads '
  type: boolean
  inputBinding:
    prefix: --split-spot
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
- id: spot_groups
  doc: '<[list]>           Filter by SPOT_GROUP (member): name[,...] '
  type: boolean
  inputBinding:
    prefix: --spot-groups
- id: clip
  doc: 'Remove adapter sequences from reads '
  type: boolean
  inputBinding:
    prefix: --clip
- id: min_read_len
  doc: 'Filter by sequence length >= <len> '
  type: string
  inputBinding:
    prefix: --minReadLen
- id: read_filter
  doc: '<[filter]>      Split into files by READ_FILTER value  optionally filter by
    value:  pass|reject|criteria|redacted '
  type: boolean
  inputBinding:
    prefix: --read-filter
- id: qual_filter
  doc: 'Filter used in early 1000 Genomes data: no  sequences starting or ending with
    >= 10N '
  type: boolean
  inputBinding:
    prefix: --qual-filter
- id: qual_filter_1
  doc: 'Filter used in current 1000 Genomes data '
  type: boolean
  inputBinding:
    prefix: --qual-filter-1
- id: aligned
  doc: 'Dump only aligned sequences '
  type: boolean
  inputBinding:
    prefix: --aligned
- id: unaligned
  doc: 'Dump only unaligned sequences '
  type: boolean
  inputBinding:
    prefix: --unaligned
- id: aligned_region
  doc: '<name[:from-to]>  Filter by position on genome. Name can  either be accession.version
    (ex:  NC_000001.10) or file specific name (ex:  "chr1" or "1"). "from" and "to"
    are 1-based  coordinates '
  type: boolean
  inputBinding:
    prefix: --aligned-region
- id: mate_pair_distance
  doc: '<from-to|unknown>  Filter by distance between matepairs.  Use "unknown" to
    find matepairs split  between the references. Use from-to to limit  matepair distance
    on the same reference '
  type: boolean
  inputBinding:
    prefix: --matepair-distance
- id: skip_technical
  doc: 'Dump only biological reads '
  type: boolean
  inputBinding:
    prefix: --skip-technical
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
- id: split_files
  doc: 'Write reads into separate files. Read  number will be suffixed to the file
    name.   NOTE! The `--split-3` option is recommended.  In cases where not all spots
    have the same  number of reads, this option will produce  files that WILL CAUSE
    ERRORS in most programs  which process split pair fastq files. '
  type: boolean
  inputBinding:
    prefix: --split-files
- id: split_3
  doc: '3-way splitting for mate-pairs. For each  spot, if there are two biological
    reads  satisfying filter conditions, the first is  placed in the `*_1.fastq` file,
    and the  second is placed in the `*_2.fastq` file. If  there is only one biological
    read  satisfying the filter conditions, it is  placed in the `*.fastq` file.All
    other  reads in the spot are ignored. '
  type: boolean
  inputBinding:
    prefix: --split-3
- id: spot_group
  doc: 'Split into files by SPOT_GROUP (member name) '
  type: boolean
  inputBinding:
    prefix: --spot-group
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
- id: dump_cs
  doc: '<[cskey]>            Formats sequence using color space (default  for SOLiD),"cskey"
    may be specified for  translation '
  type: boolean
  inputBinding:
    prefix: --dumpcs
- id: dump_base
  doc: 'Formats sequence using base space (default  for other than SOLiD). '
  type: boolean
  inputBinding:
    prefix: --dumpbase
- id: offset
  doc: 'Offset to use for quality conversion,  default is 33 '
  type: long
  inputBinding:
    prefix: --offset
- id: fast_a
  doc: '<[line width]>           FASTA only, no qualities, optional line  wrap width
    (set to zero for no wrapping) '
  type: boolean
  inputBinding:
    prefix: --fasta
- id: suppress_qual_for_cs_key
  doc: 'suppress quality-value for cskey '
  type: boolean
  inputBinding:
    prefix: --suppress-qual-for-cskey
- id: orig_fmt
  doc: 'Defline contains only original sequence name '
  type: boolean
  inputBinding:
    prefix: --origfmt
- id: read_ids
  doc: "Append read id after spot id as  'accession.spot.readid' on defline "
  type: boolean
  inputBinding:
    prefix: --readids
- id: h_elicos
  doc: 'Helicos style defline '
  type: boolean
  inputBinding:
    prefix: --helicos
- id: def_line_seq
  doc: 'Defline format specification for sequence. '
  type: string
  inputBinding:
    prefix: --defline-seq
- id: def_line_qual
  doc: "Defline format specification for quality.  <fmt> is string of characters and/or\
    \  variables. The variables can be one of: $ac  - accession, $si spot id, $sn\
    \ spot  name, $sg spot group (barcode), $sl spot  length in bases, $ri read number,\
    \ $rn  read name, $rl read length in bases. '[]'  could be used for an optional\
    \ output: if  all vars in [] yield empty values whole  group is not printed. Empty\
    \ value is empty  string or for numeric variables. Ex:  @$sn[_$rn]/$ri '_$rn'\
    \ is omitted if name  is empty"
  type: string
  inputBinding:
    prefix: --defline-qual
- id: ngc
  doc: '<path> to ngc file '
  type: File
  inputBinding:
    prefix: --ngc
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
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-dump-orig
