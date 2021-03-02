class: CommandLineTool
id: bam_load.2.10.8.cwl
inputs:
- id: in_output
  doc: Path and Name of the output database.
  type: File?
  inputBinding:
    prefix: --output
- id: in_input
  doc: Path where to get fasta files from.
  type: File?
  inputBinding:
    prefix: --input
- id: in_config
  doc: "Path to configuration file: maps the input\nBAM file's reference names to\
    \ the\nequivalent GenBank accession. It is\ntab-delimited text file with unix\
    \ line\nendings (\\n LF) with the following fields\nin this order: #1 reference\
    \ name as it\noccurs in the BAM file's SN field of @SQ\nheader record; #2 INSDC\
    \ reference ID"
  type: File?
  inputBinding:
    prefix: --config
- id: in_header
  doc: "path to file containing the SAM header to\nstore in the resulting cSRA, recommended\
    \ in\ncase of multiple input BAMs"
  type: File?
  inputBinding:
    prefix: --header
- id: in_tmpfs
  doc: Path to be used for scratch files.
  type: File?
  inputBinding:
    prefix: --tmpfs
- id: in_unaligned
  doc: Specify file without aligned reads
  type: File?
  inputBinding:
    prefix: --unaligned
- id: in_accept_dups
  doc: Accept spots inconsistent PCR duplicate
  type: boolean?
  inputBinding:
    prefix: --accept-dups
- id: in_no_match_log
  doc: "Where to write info for alignments with no\nmatching bases"
  type: File?
  inputBinding:
    prefix: --nomatch-log
- id: in_qual_quant
  doc: "Quality scores quantization level, can be\nnumber (0: none, 1: 2bit, 2: 1bit),\
    \ or\nstring like '1:10,10:20,20:30,30:-' (which\nis equivalent to 1) (nb. the\
    \ endpoint is\nexclusive)."
  type: long?
  inputBinding:
    prefix: --qual-quant
- id: in_min_mapq
  doc: "Filter secondary alignments by minimum\nmapping quality."
  type: long?
  inputBinding:
    prefix: --min-mapq
- id: in_cache_size
  doc: Set the cache size in MB for the temporary
  type: long?
  inputBinding:
    prefix: --cache-size
- id: in_minimum_match
  doc: minimum number of matches for an alignment
  type: long?
  inputBinding:
    prefix: --minimum-match
- id: in_no_secondary
  doc: ignore alignments marked as secondary
  type: boolean?
  inputBinding:
    prefix: --no-secondary
- id: in_unsorted
  doc: "Tell the loader to expect unsorted input\n(requires more memory)"
  type: boolean?
  inputBinding:
    prefix: --unsorted
- id: in_sorted
  doc: Tell the loader to require sorted input
  type: boolean?
  inputBinding:
    prefix: --sorted
- id: in_no_verify
  doc: "Skip verify existence of references from\nthe BAM file"
  type: boolean?
  inputBinding:
    prefix: --no-verify
- id: in_only_verify
  doc: "Exit after verifying existence of\nreferences from the BAM file"
  type: boolean?
  inputBinding:
    prefix: --only-verify
- id: in_use_qual
  doc: "use QUAL column for quality values (default\nis to use OQ if it is available)"
  type: boolean?
  inputBinding:
    prefix: --use-QUAL
- id: in_ref_config
  doc: "Only process alignments to references in\nthe config file"
  type: boolean?
  inputBinding:
    prefix: --ref-config
- id: in_ref_filter
  doc: Only process alignments to the given
  type: string?
  inputBinding:
    prefix: --ref-filter
- id: in_keep_mismatch_qual
  doc: Don't quantized quality at mismatched
  type: boolean?
  inputBinding:
    prefix: --keep-mismatch-qual
- id: in_max_err_count
  doc: "Set the maximum number of errors to ignore\nfrom the BAM file"
  type: long?
  inputBinding:
    prefix: --max-err-count
- id: in_ref_file
  doc: path to fasta file with references
  type: File?
  inputBinding:
    prefix: --ref-file
- id: in_ti
  doc: for trace alignments
  type: boolean?
  inputBinding:
    prefix: --TI
- id: in_max_warning_dup_flag
  doc: "set limit for number of duplicate flag\nmismatch warnings"
  type: long?
  inputBinding:
    prefix: --max-warning-dup-flag
- id: in_accept_hard_clip
  doc: accept hard clipping in CIGAR
  type: boolean?
  inputBinding:
    prefix: --accept-hard-clip
- id: in_allow_multi_map
  doc: "allow the same reference to be mapped to\nmultiple names in the input files\
    \ (default\nis disallow, old behaviors was to allow it)"
  type: boolean?
  inputBinding:
    prefix: --allow-multi-map
- id: in_make_spots_with_secondary
  doc: use secondary alignments for constructing
  type: boolean?
  inputBinding:
    prefix: --make-spots-with-secondary
- id: in_xml_log
  doc: produce XML-formatted log file
  type: File?
  inputBinding:
    prefix: --xml-log
- id: in_verbose
  doc: "Increase the verbosity of the program\nstatus messages. Use multiple times\
    \ for more\nverbosity. Negates quiet."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Turn off all status messages for the\nprogram. Negated by verbose."
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_option_file
  doc: Read more options and parameters from the
  type: File?
  inputBinding:
    prefix: --option-file
- id: in_flags
  doc: '--accept-nomatch                 Accept alignments with no matching bases '
  type: string
  inputBinding:
    position: 0
- id: in_indices
  doc: '--no-cs                          turn off awareness of colorspace '
  type: string
  inputBinding:
    position: 1
- id: in_reference
  doc: '--edit-aligned-qual <new-value>  Convert quality at aligned positions to '
  type: string
  inputBinding:
    position: 2
- id: in_positions
  doc: '--max-rec-count <number>         Set the maximum number of records to '
  type: string
  inputBinding:
    position: 0
- id: in_spots
  doc: '--defer-secondary                defer processing of secondary alignments '
  type: string
  inputBinding:
    position: 0
- id: in_quit_dot
  doc: '-L|--log-level <level>           Logging level as number or enum string. One '
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: 'bam-load.2.10.8 : 2.10.8'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Path and Name of the output database.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- bam-load.2.10.8
