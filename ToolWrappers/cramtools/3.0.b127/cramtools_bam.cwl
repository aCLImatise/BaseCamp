class: CommandLineTool
id: cramtools_bam.cwl
inputs:
- id: in_calculate_md_tag
  doc: 'Calculate MD tag. (default: false)'
  type: boolean
  inputBinding:
    prefix: --calculate-md-tag
- id: in_calculate_nm_tag
  doc: 'Calculate NM tag. (default: false)'
  type: boolean
  inputBinding:
    prefix: --calculate-nm-tag
- id: in_count_only
  doc: 'Count number of records. (default: false)'
  type: boolean
  inputBinding:
    prefix: --count-only
- id: in_decrypt
  doc: 'Decrypt the file. (default: false)'
  type: boolean
  inputBinding:
    prefix: --decrypt
- id: in_default_quality_score
  doc: 'Use this quality score (decimal representation of ASCII symbol) as a default
    value when the original quality score was lost due to compression. Minimum is
    33. (default: 63)'
  type: boolean
  inputBinding:
    prefix: --default-quality-score
- id: in_filter_flags
  doc: 'Filtering flags.  (default: 0)'
  type: boolean
  inputBinding:
    prefix: --filter-flags
- id: in_ignore_md_five_mismatch
  doc: 'Issue a warning on sequence MD5 mismatch and continue. This does not garantee
    the data will be read succesfully.  (default: false)'
  type: boolean
  inputBinding:
    prefix: --ignore-md5-mismatch
- id: in_inject_sq_uri
  doc: 'Inject or change the @SQ:UR header fields to point to ENA reference service.  (default:
    false)'
  type: boolean
  inputBinding:
    prefix: --inject-sq-uri
- id: in_input_cram_file
  doc: The path or FTP URL to the CRAM file to uncompress. Omit if standard input
    (pipe).
  type: boolean
  inputBinding:
    prefix: --input-cram-file
- id: in_output_bam_file
  doc: The path to the output BAM file.
  type: File
  inputBinding:
    prefix: --output-bam-file
- id: in_password
  doc: Password to decrypt the file.
  type: boolean
  inputBinding:
    prefix: --password
- id: in_print_sam_header
  doc: 'Print SAM header when writing SAM format. (default: false)'
  type: boolean
  inputBinding:
    prefix: --print-sam-header
- id: in_reference_fast_a_file
  doc: Path to the reference fasta file, it must be uncompressed and indexed (use
    'samtools faidx' for example).
  type: boolean
  inputBinding:
    prefix: --reference-fasta-file
- id: in_required_flags
  doc: 'Required flags.  (default: 0)'
  type: boolean
  inputBinding:
    prefix: --required-flags
- id: in_skip_md_five_check
  doc: 'Skip MD5 checks when reading the header. (default: false)'
  type: boolean
  inputBinding:
    prefix: --skip-md5-check
- id: in_sync_bam_output
  doc: 'Write BAM output in the same thread. (default: false)'
  type: boolean
  inputBinding:
    prefix: --sync-bam-output
- id: in_output_bam_format
  doc: 'Output in BAM format. (default: false)'
  type: boolean
  inputBinding:
    prefix: --output-bam-format
- id: in_print_sam_header_quit
  doc: 'Print SAM header and quit. (default: false)'
  type: boolean
  inputBinding:
    prefix: -H
- id: in_log_level
  doc: 'Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)'
  type: boolean
  inputBinding:
    prefix: --log-level
- id: in_main_class
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_bam_file
  doc: The path to the output BAM file.
  type: File
  outputBinding:
    glob: $(inputs.in_output_bam_file)
cwlVersion: v1.1
baseCommand:
- cramtools
- bam
