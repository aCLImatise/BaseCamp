class: CommandLineTool
id: cramtools_bam.cwl
inputs:
- id: calculate_md_tag
  doc: 'Calculate MD tag. (default: false)'
  type: boolean
  inputBinding:
    prefix: --calculate-md-tag
- id: calculate_nm_tag
  doc: 'Calculate NM tag. (default: false)'
  type: boolean
  inputBinding:
    prefix: --calculate-nm-tag
- id: count_only
  doc: 'Count number of records. (default: false)'
  type: boolean
  inputBinding:
    prefix: --count-only
- id: decrypt
  doc: 'Decrypt the file. (default: false)'
  type: boolean
  inputBinding:
    prefix: --decrypt
- id: default_quality_score
  doc: 'Use this quality score (decimal representation of ASCII symbol) as a default
    value when the original quality score was lost due to compression. Minimum is
    33. (default: 63)'
  type: boolean
  inputBinding:
    prefix: --default-quality-score
- id: filter_flags
  doc: 'Filtering flags.  (default: 0)'
  type: boolean
  inputBinding:
    prefix: --filter-flags
- id: ignore_md5_mismatch
  doc: 'Issue a warning on sequence MD5 mismatch and continue. This does not garantee
    the data will be read succesfully.  (default: false)'
  type: boolean
  inputBinding:
    prefix: --ignore-md5-mismatch
- id: inject_sq_uri
  doc: 'Inject or change the @SQ:UR header fields to point to ENA reference service.  (default:
    false)'
  type: boolean
  inputBinding:
    prefix: --inject-sq-uri
- id: input_cram_file
  doc: The path or FTP URL to the CRAM file to uncompress. Omit if standard input
    (pipe).
  type: boolean
  inputBinding:
    prefix: --input-cram-file
- id: output_bam_file
  doc: The path to the output BAM file.
  type: boolean
  inputBinding:
    prefix: --output-bam-file
- id: password
  doc: Password to decrypt the file.
  type: boolean
  inputBinding:
    prefix: --password
- id: print_sam_header
  doc: 'Print SAM header when writing SAM format. (default: false)'
  type: boolean
  inputBinding:
    prefix: --print-sam-header
- id: reference_fast_a_file
  doc: "Path to the reference fasta file, it must be uncompressed and indexed (use\
    \ 'samtools faidx' for example). "
  type: boolean
  inputBinding:
    prefix: --reference-fasta-file
- id: required_flags
  doc: 'Required flags.  (default: 0)'
  type: boolean
  inputBinding:
    prefix: --required-flags
- id: skip_md5_check
  doc: 'Skip MD5 checks when reading the header. (default: false)'
  type: boolean
  inputBinding:
    prefix: --skip-md5-check
- id: sync_bam_output
  doc: 'Write BAM output in the same thread. (default: false)'
  type: boolean
  inputBinding:
    prefix: --sync-bam-output
- id: output_bam_format
  doc: 'Output in BAM format. (default: false)'
  type: boolean
  inputBinding:
    prefix: --output-bam-format
- id: h
  doc: 'Print SAM header and quit. (default: false)'
  type: boolean
  inputBinding:
    prefix: -H
- id: log_level
  doc: 'Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)'
  type: boolean
  inputBinding:
    prefix: --log-level
outputs: []
cwlVersion: v1.1
baseCommand:
- cramtools
- bam
