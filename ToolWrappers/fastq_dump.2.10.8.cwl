class: CommandLineTool
id: fastq_dump.2.10.8.cwl
inputs:
- id: in_accession
  doc: "Replaces accession derived from <path> in\nfilename(s) and deflines (only\
    \ for\nsingle table dump)"
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
  doc: '<[list]>[,...]  Filter by SPOT_GROUP (member): name[,...]'
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
  doc: "Split into files by READ_FILTER value\n[split], optionally filter by value:\n\
    [pass|reject|criteria|redacted]"
  type: string
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
  doc: "<name[:from-to]>\nFilter by position on genome. Name can\neiter by accession.version\
    \ (ex:\nNC_000001.10) or file specific name (ex:\n\"chr1\" or \"1\". \"from\"\
    \ and \"to\" are\n1-based coordinates"
  type: boolean
  inputBinding:
    prefix: --aligned-region
- id: in_mate_pair_distance
  doc: "Filter by distance between matepairs. Use\n\"unknown\" to find matepairs split\n\
    between the references. Use from-to to\nlimit matepair distance on the same\n\
    reference"
  type: string
  inputBinding:
    prefix: --matepair_distance
- id: in_skip_technical
  doc: Dump only biological reads
  type: boolean
  inputBinding:
    prefix: --skip-technical
- id: in_outdir
  doc: "Output directory, default is working\ndirectory '.'"
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_stdout
  doc: "Output to stdout, all split data become\njoined into single stream"
  type: boolean
  inputBinding:
    prefix: --stdout
- id: in_gzip
  doc: "Compress output using gzip: deprecated,\nnot recommended"
  type: boolean
  inputBinding:
    prefix: --gzip
- id: in_bzip_two
  doc: "Compress output using bzip2: deprecated,\nnot recommended"
  type: boolean
  inputBinding:
    prefix: --bzip2
- id: in_split_files
  doc: "Write reads into separate files. Read\nnumber will be suffixed to the file\n\
    name. NOTE! The `--split-3` option is\nrecommended. In cases where not all\nspots\
    \ have the same number of reads,\nthis option will produce files that WILL\nCAUSE\
    \ ERRORS in most programs which\nprocess split pair fastq files."
  type: boolean
  inputBinding:
    prefix: --split-files
- id: in_split_e
  doc: "3-way splitting for mate-pairs. For each\nspot, if there are two biological\
    \ reads\nsatisfying filter conditions, the first\nis placed in the `*_1.fastq`\
    \ file, and\nthe second is placed in the `*_2.fastq`\nfile. If there is only one\
    \ biological\nread satisfying the filter conditions,\nit is placed in the `*.fastq`\
    \ file.All\nother reads in the spot are ignored."
  type: boolean
  inputBinding:
    prefix: --split-e
- id: in_spot_group
  doc: "Split into files by SPOT_GROUP (member\nname)"
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
  doc: "Formats sequence using color space\n(default for SOLiD), \"cskey\" may be\n\
    specified for translation or else\nspecify \"dflt\" to use the default value"
  type: string
  inputBinding:
    prefix: --dumpcs
- id: in_dump_base
  doc: "Formats sequence using base space (default\nfor other than SOLiD)."
  type: boolean
  inputBinding:
    prefix: --dumpbase
- id: in_offset
  doc: "<integer             Offset to use for quality conversion,\ndefault is 33"
  type: boolean
  inputBinding:
    prefix: --offset
- id: in_fast_a
  doc: "FASTA only, no qualities, with can be\n\"default\" or \"0\" for no wrapping"
  type: long
  inputBinding:
    prefix: --fasta
- id: in_suppress_qual_for_cs_key
  doc: suppress quality-value for cskey
  type: boolean
  inputBinding:
    prefix: --suppress-qual-for-cskey
- id: in_orig_fmt
  doc: Defline contains only original sequence
  type: boolean
  inputBinding:
    prefix: --origfmt
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
    variables. The variables can be one of:\n$ac - accession, $si spot id, $sn spot\n\
    name, $sg spot group (barcode), $sl spot\nlength in bases, $ri read number, $rn\n\
    read name, $rl read length in bases.\n'[]' could be used for an optional\noutput:\
    \ if all vars in [] yield empty\nvalues whole group is not printed. Empty\nvalue\
    \ is empty string or for numeric\nvariables. Ex: @$sn[_$rn]/$ri '_$rn' is\nomitted\
    \ if name is empty"
  type: long
  inputBinding:
    prefix: --defline-qual
- id: in_ngc
  doc: <path> to ngc file
  type: File
  inputBinding:
    prefix: --ngc
- id: in_perm
  doc: <path> to permission file
  type: File
  inputBinding:
    prefix: --perm
- id: in_location
  doc: location in cloud
  type: string
  inputBinding:
    prefix: --location
- id: in_cart
  doc: <path> to cart file
  type: File
  inputBinding:
    prefix: --cart
- id: in_disable_multithreading
  doc: disable multithreading
  type: boolean
  inputBinding:
    prefix: --disable-multithreading
- id: in_log_level
  doc: "Logging level as number or enum string.\nOne of\n(fatal|sys|int|err|warn|info|debug)\
    \ or\n(0-6) Current/default is warn"
  type: long
  inputBinding:
    prefix: --log-level
- id: in_option_file
  doc: Read more options and parameters from the
  type: File
  inputBinding:
    prefix: --option-file
- id: in_name
  doc: -I|--readids                     Append read id after spot id as
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: -h|--help                        print this message
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "Output directory, default is working\ndirectory '.'"
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- fastq-dump.2.10.8
