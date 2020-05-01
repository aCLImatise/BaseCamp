#!/usr/bin/env cwl-runner

baseCommand:
- fastq-dump.2.10.3
class: CommandLineTool
cwlVersion: v1.0
id: fastq-dump.2.10.3
inputs:
- doc: Replaces accession derived from <path> in filename(s) and deflines (only for
    single table dump)
  id: accession
  inputBinding:
    prefix: --accession
  type: string
- doc: Table name within cSRA object, default is "SEQUENCE"
  id: table
  inputBinding:
    prefix: --table
  type: string
- doc: Split spots into individual reads
  id: split_spot
  inputBinding:
    prefix: --split-spot
  type: boolean
- doc: Minimum spot id
  id: min_spot_id
  inputBinding:
    prefix: --minSpotId
  type: string
- doc: Maximum spot id
  id: max_spot_id
  inputBinding:
    prefix: --maxSpotId
  type: string
- doc: '<[list]>[,...]  Filter by SPOT_GROUP (member): name[,...]'
  id: spot_groups
  inputBinding:
    prefix: --spot-groups
  type: boolean
- doc: Remove adapter sequences from reads
  id: clip
  inputBinding:
    prefix: --clip
  type: boolean
- doc: Filter by sequence length >= <len>
  id: min_read_len
  inputBinding:
    prefix: --minReadLen
  type: string
- doc: 'Split into files by READ_FILTER value [split], optionally filter by value:
    [pass|reject|criteria|redacted]'
  id: read_filter
  inputBinding:
    prefix: --read-filter
  type: string
- doc: 'Filter used in early 1000 Genomes data: no sequences starting or ending with
    >= 10N'
  id: qual_filter
  inputBinding:
    prefix: --qual-filter
  type: boolean
- doc: Filter used in current 1000 Genomes data
  id: qual_filter_1
  inputBinding:
    prefix: --qual-filter-1
  type: boolean
- doc: Dump only aligned sequences
  id: aligned
  inputBinding:
    prefix: --aligned
  type: boolean
- doc: Dump only unaligned sequences
  id: unaligned
  inputBinding:
    prefix: --unaligned
  type: boolean
- doc: '<name[:from-to]> Filter by position on genome. Name can eiter by accession.version
    (ex: NC_000001.10) or file specific name (ex: "chr1" or "1". "from" and "to" are
    1-based coordinates'
  id: aligned_region
  inputBinding:
    prefix: --aligned-region
  type: boolean
- doc: <from-to|unknown> Filter by distance between matepairs. Use "unknown" to find
    matepairs split between the references. Use from-to to limit matepair distance
    on the same reference
  id: mate_pair_distance
  inputBinding:
    prefix: --matepair_distance
  type: boolean
- doc: Dump only biological reads
  id: skip_technical
  inputBinding:
    prefix: --skip-technical
  type: boolean
- doc: Output directory, default is working directory '.'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: File
- doc: Output to stdout, all split data become joined into single stream
  id: stdout
  inputBinding:
    prefix: --stdout
  type: boolean
- doc: 'Compress output using gzip: deprecated, not recommended'
  id: gzip
  inputBinding:
    prefix: --gzip
  type: boolean
- doc: 'Compress output using bzip2: deprecated, not recommended'
  id: bzip2
  inputBinding:
    prefix: --bzip2
  type: boolean
- doc: Write reads into separate files. Read number will be suffixed to the file name.
    NOTE! The `--split-3` option is recommended. In cases where not all spots have
    the same number of reads, this option will produce files that WILL CAUSE ERRORS
    in most programs which process split pair fastq files.
  id: split_files
  inputBinding:
    prefix: --split-files
  type: boolean
- doc: 3-way splitting for mate-pairs. For each spot, if there are two biological
    reads satisfying filter conditions, the first is placed in the `*_1.fastq` file,
    and the second is placed in the `*_2.fastq` file. If there is only one biological
    read satisfying the filter conditions, it is placed in the `*.fastq` file.All
    other reads in the spot are ignored.
  id: split_e
  inputBinding:
    prefix: --split-e
  type: boolean
- doc: Split into files by SPOT_GROUP (member name)
  id: spot_group
  inputBinding:
    prefix: --spot-group
  type: boolean
- doc: Split into subdirectories instead of files
  id: group_in_dirs
  inputBinding:
    prefix: --group-in-dirs
  type: boolean
- doc: Do not delete empty files
  id: keep_empty_files
  inputBinding:
    prefix: --keep-empty-files
  type: boolean
- doc: Formats sequence using color space (default for SOLiD), "cskey" may be specified
    for translation or else specify "dflt" to use the default value
  id: dump_cs
  inputBinding:
    prefix: --dumpcs
  type: string
- doc: Formats sequence using base space (default for other than SOLiD).
  id: dump_base
  inputBinding:
    prefix: --dumpbase
  type: boolean
- doc: <integer             Offset to use for quality conversion, default is 33
  id: offset
  inputBinding:
    prefix: --offset
  type: boolean
- doc: FASTA only, no qualities, with can be "default" or "0" for no wrapping
  id: fast_a
  inputBinding:
    prefix: --fasta
  type: string
- doc: suppress quality-value for cskey
  id: suppress_qual_for_cs_key
  inputBinding:
    prefix: --suppress-qual-for-cskey
  type: boolean
- doc: Defline contains only original sequence name
  id: orig_fmt
  inputBinding:
    prefix: --origfmt
  type: boolean
- doc: Append read id after spot id as 'accession.spot.readid' on defline
  id: read_ids
  inputBinding:
    prefix: --readids
  type: boolean
- doc: Helicos style defline
  id: h_elicos
  inputBinding:
    prefix: --helicos
  type: boolean
- doc: Defline format specification for sequence.
  id: def_line_seq
  inputBinding:
    prefix: --defline-seq
  type: string
- doc: "Defline format specification for quality. <fmt> is string of characters and/or\
    \ variables. The variables can be one of: $ac - accession, $si spot id, $sn spot\
    \ name, $sg spot group (barcode), $sl spot length in bases, $ri read number, $rn\
    \ read name, $rl read length in bases. '[]' could be used for an optional output:\
    \ if all vars in [] yield empty values whole group is not printed. Empty value\
    \ is empty string or for numeric variables. Ex: @$sn[_$rn]/$ri '_$rn' is omitted\
    \ if name is empty"
  id: def_line_qual
  inputBinding:
    prefix: --defline-qual
  type: string
- doc: <path> to ngc file
  id: ngc
  inputBinding:
    prefix: --ngc
  type: File
- doc: <path> to permission file
  id: perm
  inputBinding:
    prefix: --perm
  type: File
- doc: location in cloud
  id: location
  inputBinding:
    prefix: --location
  type: string
- doc: <path> to cart file
  id: cart
  inputBinding:
    prefix: --cart
  type: File
- doc: disable multithreading
  id: disable_multithreading
  inputBinding:
    prefix: --disable-multithreading
  type: boolean
- doc: Logging level as number or enum string. One of (fatal|sys|int|err|warn|info|debug)
    or (0-6) Current/default is warn
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: Read more options and parameters from the file.
  id: option_file
  inputBinding:
    prefix: --option-file
  type: File
