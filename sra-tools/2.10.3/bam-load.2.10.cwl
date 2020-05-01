#!/usr/bin/env cwl-runner

baseCommand:
- bam-load.2.10.3
class: CommandLineTool
cwlVersion: v1.0
id: bam-load.2.10.3
inputs:
- doc: ''
  id: bam_file
  inputBinding:
    position: 0
  type: string
- doc: 'Path and Name of the output database. '
  id: output
  inputBinding:
    prefix: --output
  type: File
- doc: 'Path where to get fasta files from. '
  id: input
  inputBinding:
    prefix: --input
  type: File
- doc: "Path to configuration file: maps the input  BAM file's reference names to\
    \ the  equivalent GenBank accession. It is  tab-delimited text file with unix\
    \ line  endings (\\n LF) with the following fields  in this order: #1 reference\
    \ name as it  occurs in the BAM file's SN field of @SQ  header record; #2 INSDC\
    \ reference ID "
  id: config
  inputBinding:
    prefix: --config
  type: File
- doc: 'path to file containing the SAM header to  store in the resulting cSRA, recommended
    in  case of multiple input BAMs '
  id: header
  inputBinding:
    prefix: --header
  type: File
- doc: 'Path to be used for scratch files. '
  id: tmpfs
  inputBinding:
    prefix: --tmpfs
  type: File
- doc: 'Specify file without aligned reads '
  id: unaligned
  inputBinding:
    prefix: --unaligned
  type: File
- doc: 'Accept spots inconsistent PCR duplicate  flags '
  id: accept_dups
  inputBinding:
    prefix: --accept-dups
  type: boolean
- doc: 'Accept alignments with no matching bases '
  id: accept_no_match
  inputBinding:
    prefix: --accept-nomatch
  type: boolean
- doc: 'Where to write info for alignments with no  matching bases '
  id: no_match_log
  inputBinding:
    prefix: --nomatch-log
  type: File
- doc: "Quality scores quantization level, can be  number (0: none, 1: 2bit, 2: 1bit),\
    \ or  string like '1:10,10:20,20:30,30:-' (which  is equivalent to 1) (nb. the\
    \ endpoint is  exclusive). "
  id: qual_quant
  inputBinding:
    prefix: --qual-quant
  type: string
- doc: 'Filter secondary alignments by minimum  mapping quality. '
  id: min_mapq
  inputBinding:
    prefix: --min-mapq
  type: string
- doc: 'Set the cache size in MB for the temporary  indices '
  id: cache_size
  inputBinding:
    prefix: --cache-size
  type: string
- doc: 'turn off awareness of colorspace '
  id: no_cs
  inputBinding:
    prefix: --no-cs
  type: boolean
- doc: 'minimum number of matches for an alignment '
  id: minimum_match
  inputBinding:
    prefix: --minimum-match
  type: string
- doc: 'ignore alignments marked as secondary '
  id: no_secondary
  inputBinding:
    prefix: --no-secondary
  type: boolean
- doc: 'Tell the loader to expect unsorted input  (requires more memory) '
  id: unsorted
  inputBinding:
    prefix: --unsorted
  type: boolean
- doc: 'Tell the loader to require sorted input '
  id: sorted
  inputBinding:
    prefix: --sorted
  type: boolean
- doc: 'Skip verify existence of references from  the BAM file '
  id: no_verify
  inputBinding:
    prefix: --no-verify
  type: boolean
- doc: 'Exit after verifying existence of  references from the BAM file '
  id: only_verify
  inputBinding:
    prefix: --only-verify
  type: boolean
- doc: 'use QUAL column for quality values (default  is to use OQ if it is available) '
  id: use_qual
  inputBinding:
    prefix: --use-QUAL
  type: boolean
- doc: 'Only process alignments to references in  the config file '
  id: ref_config
  inputBinding:
    prefix: --ref-config
  type: boolean
- doc: 'Only process alignments to the given  reference '
  id: ref_filter
  inputBinding:
    prefix: --ref-filter
  type: string
- doc: 'Convert quality at aligned positions to  this value '
  id: edit_aligned_qual
  inputBinding:
    prefix: --edit-aligned-qual
  type: string
- doc: "Don't quantized quality at mismatched  positions "
  id: keep_mismatch_qual
  inputBinding:
    prefix: --keep-mismatch-qual
  type: boolean
- doc: 'Set the maximum number of records to  process from the BAM file '
  id: max_rec_count
  inputBinding:
    prefix: --max-rec-count
  type: string
- doc: 'Set the maximum number of errors to ignore  from the BAM file '
  id: max_err_count
  inputBinding:
    prefix: --max-err-count
  type: string
- doc: 'path to fasta file with references '
  id: ref_file
  inputBinding:
    prefix: --ref-file
  type: File
- doc: 'for trace alignments '
  id: ti
  inputBinding:
    prefix: --TI
  type: boolean
- doc: 'set limit for number of duplicate flag  mismatch warnings '
  id: max_warning_dup_flag
  inputBinding:
    prefix: --max-warning-dup-flag
  type: string
- doc: 'accept hard clipping in CIGAR '
  id: accept_hard_clip
  inputBinding:
    prefix: --accept-hard-clip
  type: boolean
- doc: 'allow the same reference to be mapped to  multiple names in the input files
    (default  is disallow, old behaviors was to allow it) '
  id: allow_multi_map
  inputBinding:
    prefix: --allow-multi-map
  type: boolean
- doc: 'use secondary alignments for constructing  spots '
  id: make_spots_with_secondary
  inputBinding:
    prefix: --make-spots-with-secondary
  type: boolean
- doc: 'defer processing of secondary alignments  until the end of the file '
  id: defer_secondary
  inputBinding:
    prefix: --defer-secondary
  type: boolean
- doc: 'produce XML-formatted log file '
  id: xml_log
  inputBinding:
    prefix: --xml-log
  type: string
- doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'Turn off all status messages for the  program. Negated by verbose. '
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Read more options and parameters from the  file. '
  id: option_file
  inputBinding:
    prefix: --option-file
  type: File
