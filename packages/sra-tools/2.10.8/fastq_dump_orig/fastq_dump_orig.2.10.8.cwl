class: CommandLineTool
id: fastq_dump_orig.2.10.8.cwl
inputs:
- id: in_accession
  doc: "Replaces accession derived from <path> in\nfilename(s) and deflines (only\
    \ for single\ntable dump)"
  type: File
  inputBinding:
    prefix: --accession
- id: in_table
  doc: "Table name within cSRA object, default is\n\"SEQUENCE\""
  type: string
  inputBinding:
    prefix: --table
- id: in_split_spot
  doc: Split spots into individual reads
  type: boolean
  inputBinding:
    prefix: --split-spot
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
- id: in_spot_groups
  doc: '<[list]>           Filter by SPOT_GROUP (member): name[,...]'
  type: boolean
  inputBinding:
    prefix: --spot-groups
- id: in_clip
  doc: Remove adapter sequences from reads
  type: boolean
  inputBinding:
    prefix: --clip
- id: in_min_read_len
  doc: Filter by sequence length >= <len>
  type: long
  inputBinding:
    prefix: --minReadLen
- id: in_read_filter
  doc: "<[filter]>      Split into files by READ_FILTER value\noptionally filter by\
    \ value:\npass|reject|criteria|redacted"
  type: boolean
  inputBinding:
    prefix: --read-filter
- id: in_qual_filter
  doc: "Filter used in early 1000 Genomes data: no\nsequences starting or ending with\
    \ >= 10N"
  type: boolean
  inputBinding:
    prefix: --qual-filter
- id: in_qual_filter_one
  doc: Filter used in current 1000 Genomes data
  type: boolean
  inputBinding:
    prefix: --qual-filter-1
- id: in_aligned
  doc: Dump only aligned sequences
  type: boolean
  inputBinding:
    prefix: --aligned
- id: in_unaligned
  doc: Dump only unaligned sequences
  type: boolean
  inputBinding:
    prefix: --unaligned
- id: in_aligned_region
  doc: "<name[:from-to]>  Filter by position on genome. Name can\neither be accession.version\
    \ (ex:\nNC_000001.10) or file specific name (ex:\n\"chr1\" or \"1\"). \"from\"\
    \ and \"to\" are 1-based\ncoordinates"
  type: boolean
  inputBinding:
    prefix: --aligned-region
- id: in_mate_pair_distance
  doc: "Filter by distance between matepairs.\nUse \"unknown\" to find matepairs split\n\
    between the references. Use from-to to limit\nmatepair distance on the same reference"
  type: string
  inputBinding:
    prefix: --matepair-distance
- id: in_skip_technical
  doc: Dump only biological reads
  type: boolean
  inputBinding:
    prefix: --skip-technical
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
- id: in_gzip
  doc: 'Compress output using gzip: deprecated, not'
  type: boolean
  inputBinding:
    prefix: --gzip
- id: in_split_files
  doc: "Write reads into separate files. Read\nnumber will be suffixed to the file\
    \ name.\nNOTE! The `--split-3` option is recommended.\nIn cases where not all\
    \ spots have the same\nnumber of reads, this option will produce\nfiles that WILL\
    \ CAUSE ERRORS in most programs\nwhich process split pair fastq files."
  type: boolean
  inputBinding:
    prefix: --split-files
- id: in_split_three
  doc: "3-way splitting for mate-pairs. For each\nspot, if there are two biological\
    \ reads\nsatisfying filter conditions, the first is\nplaced in the `*_1.fastq`\
    \ file, and the\nsecond is placed in the `*_2.fastq` file. If\nthere is only one\
    \ biological read\nsatisfying the filter conditions, it is\nplaced in the `*.fastq`\
    \ file.All other\nreads in the spot are ignored."
  type: boolean
  inputBinding:
    prefix: --split-3
- id: in_spot_group
  doc: Split into files by SPOT_GROUP (member name)
  type: boolean
  inputBinding:
    prefix: --spot-group
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
- id: in_dump_cs
  doc: "<[cskey]>            Formats sequence using color space (default\nfor SOLiD),\"\
    cskey\" may be specified for\ntranslation"
  type: boolean
  inputBinding:
    prefix: --dumpcs
- id: in_dump_base
  doc: "Formats sequence using base space (default\nfor other than SOLiD)."
  type: boolean
  inputBinding:
    prefix: --dumpbase
- id: in_offset
  doc: "Offset to use for quality conversion,\ndefault is 33"
  type: long
  inputBinding:
    prefix: --offset
- id: in_fast_a
  doc: "<[line width]>           FASTA only, no qualities, optional line\nwrap width\
    \ (set to zero for no wrapping)"
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_suppress_qual_for_cs_key
  doc: suppress quality-value for cskey
  type: boolean
  inputBinding:
    prefix: --suppress-qual-for-cskey
- id: in_orig_fmt
  doc: Defline contains only original sequence name
  type: boolean
  inputBinding:
    prefix: --origfmt
- id: in_read_ids
  doc: "Append read id after spot id as\n'accession.spot.readid' on defline"
  type: boolean
  inputBinding:
    prefix: --readids
- id: in_h_elicos
  doc: Helicos style defline
  type: boolean
  inputBinding:
    prefix: --helicos
- id: in_def_line_seq
  doc: Defline format specification for sequence.
  type: string
  inputBinding:
    prefix: --defline-seq
- id: in_def_line_qual
  doc: "Defline format specification for quality.\n<fmt> is string of characters and/or\n\
    variables. The variables can be one of: $ac\n- accession, $si spot id, $sn spot\n\
    name, $sg spot group (barcode), $sl spot\nlength in bases, $ri read number, $rn\n\
    read name, $rl read length in bases. '[]'\ncould be used for an optional output:\
    \ if\nall vars in [] yield empty values whole\ngroup is not printed. Empty value\
    \ is empty\nstring or for numeric variables. Ex:\n@$sn[_$rn]/$ri '_$rn' is omitted\
    \ if name\nis empty"
  type: long
  inputBinding:
    prefix: --defline-qual
- id: in_ngc
  doc: <path> to ngc file
  type: File
  inputBinding:
    prefix: --ngc
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
- id: in_recommended
  doc: '--bzip2                          Compress output using bzip2: deprecated, '
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
- fastq-dump-orig.2.10.8
