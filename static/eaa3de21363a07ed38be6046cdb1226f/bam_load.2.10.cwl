class: CommandLineTool
id: bam_load.2.10.3.cwl
inputs:
- id: bam_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output
  doc: 'Path and Name of the output database. '
  type: File
  inputBinding:
    prefix: --output
- id: input
  doc: 'Path where to get fasta files from. '
  type: File
  inputBinding:
    prefix: --input
- id: config
  doc: "Path to configuration file: maps the input  BAM file's reference names to\
    \ the  equivalent GenBank accession. It is  tab-delimited text file with unix\
    \ line  endings (\\n LF) with the following fields  in this order: #1 reference\
    \ name as it  occurs in the BAM file's SN field of @SQ  header record; #2 INSDC\
    \ reference ID "
  type: File
  inputBinding:
    prefix: --config
- id: header
  doc: 'path to file containing the SAM header to  store in the resulting cSRA, recommended
    in  case of multiple input BAMs '
  type: File
  inputBinding:
    prefix: --header
- id: tmpfs
  doc: 'Path to be used for scratch files. '
  type: File
  inputBinding:
    prefix: --tmpfs
- id: unaligned
  doc: 'Specify file without aligned reads '
  type: File
  inputBinding:
    prefix: --unaligned
- id: accept_dups
  doc: 'Accept spots inconsistent PCR duplicate  flags '
  type: boolean
  inputBinding:
    prefix: --accept-dups
- id: accept_no_match
  doc: 'Accept alignments with no matching bases '
  type: boolean
  inputBinding:
    prefix: --accept-nomatch
- id: no_match_log
  doc: 'Where to write info for alignments with no  matching bases '
  type: File
  inputBinding:
    prefix: --nomatch-log
- id: qual_quant
  doc: "Quality scores quantization level, can be  number (0: none, 1: 2bit, 2: 1bit),\
    \ or  string like '1:10,10:20,20:30,30:-' (which  is equivalent to 1) (nb. the\
    \ endpoint is  exclusive). "
  type: string
  inputBinding:
    prefix: --qual-quant
- id: min_mapq
  doc: 'Filter secondary alignments by minimum  mapping quality. '
  type: string
  inputBinding:
    prefix: --min-mapq
- id: cache_size
  doc: 'Set the cache size in MB for the temporary  indices '
  type: string
  inputBinding:
    prefix: --cache-size
- id: no_cs
  doc: 'turn off awareness of colorspace '
  type: boolean
  inputBinding:
    prefix: --no-cs
- id: minimum_match
  doc: 'minimum number of matches for an alignment '
  type: string
  inputBinding:
    prefix: --minimum-match
- id: no_secondary
  doc: 'ignore alignments marked as secondary '
  type: boolean
  inputBinding:
    prefix: --no-secondary
- id: unsorted
  doc: 'Tell the loader to expect unsorted input  (requires more memory) '
  type: boolean
  inputBinding:
    prefix: --unsorted
- id: sorted
  doc: 'Tell the loader to require sorted input '
  type: boolean
  inputBinding:
    prefix: --sorted
- id: no_verify
  doc: 'Skip verify existence of references from  the BAM file '
  type: boolean
  inputBinding:
    prefix: --no-verify
- id: only_verify
  doc: 'Exit after verifying existence of  references from the BAM file '
  type: boolean
  inputBinding:
    prefix: --only-verify
- id: use_qual
  doc: 'use QUAL column for quality values (default  is to use OQ if it is available) '
  type: boolean
  inputBinding:
    prefix: --use-QUAL
- id: ref_config
  doc: 'Only process alignments to references in  the config file '
  type: boolean
  inputBinding:
    prefix: --ref-config
- id: ref_filter
  doc: 'Only process alignments to the given  reference '
  type: string
  inputBinding:
    prefix: --ref-filter
- id: edit_aligned_qual
  doc: 'Convert quality at aligned positions to  this value '
  type: string
  inputBinding:
    prefix: --edit-aligned-qual
- id: keep_mismatch_qual
  doc: "Don't quantized quality at mismatched  positions "
  type: boolean
  inputBinding:
    prefix: --keep-mismatch-qual
- id: max_rec_count
  doc: 'Set the maximum number of records to  process from the BAM file '
  type: string
  inputBinding:
    prefix: --max-rec-count
- id: max_err_count
  doc: 'Set the maximum number of errors to ignore  from the BAM file '
  type: string
  inputBinding:
    prefix: --max-err-count
- id: ref_file
  doc: 'path to fasta file with references '
  type: File
  inputBinding:
    prefix: --ref-file
- id: ti
  doc: 'for trace alignments '
  type: boolean
  inputBinding:
    prefix: --TI
- id: max_warning_dup_flag
  doc: 'set limit for number of duplicate flag  mismatch warnings '
  type: string
  inputBinding:
    prefix: --max-warning-dup-flag
- id: accept_hard_clip
  doc: 'accept hard clipping in CIGAR '
  type: boolean
  inputBinding:
    prefix: --accept-hard-clip
- id: allow_multi_map
  doc: 'allow the same reference to be mapped to  multiple names in the input files
    (default  is disallow, old behaviors was to allow it) '
  type: boolean
  inputBinding:
    prefix: --allow-multi-map
- id: make_spots_with_secondary
  doc: 'use secondary alignments for constructing  spots '
  type: boolean
  inputBinding:
    prefix: --make-spots-with-secondary
- id: defer_secondary
  doc: 'defer processing of secondary alignments  until the end of the file '
  type: boolean
  inputBinding:
    prefix: --defer-secondary
- id: xml_log
  doc: 'produce XML-formatted log file '
  type: string
  inputBinding:
    prefix: --xml-log
- id: log_level
  doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  type: string
  inputBinding:
    prefix: --log-level
- id: verbose
  doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: 'Turn off all status messages for the  program. Negated by verbose. '
  type: boolean
  inputBinding:
    prefix: --quiet
- id: option_file
  doc: 'Read more options and parameters from the  file. '
  type: File
  inputBinding:
    prefix: --option-file
outputs: []
cwlVersion: v1.1
baseCommand:
- bam-load.2.10.3
