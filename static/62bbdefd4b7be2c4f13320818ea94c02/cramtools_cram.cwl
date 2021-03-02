class: CommandLineTool
id: cramtools_cram.cwl
inputs:
- id: in_capture_all_tags
  doc: 'Capture all tags. (default: false)'
  type: boolean?
  inputBinding:
    prefix: --capture-all-tags
- id: in_capture_tags
  doc: "Capture the tags listed, for example 'OQ:XA:XB' (default: )"
  type: boolean?
  inputBinding:
    prefix: --capture-tags
- id: in_encrypt
  doc: 'Encrypt the CRAM file. (default: false)'
  type: boolean?
  inputBinding:
    prefix: --encrypt
- id: in_ignore_md_five_mismatch
  doc: 'Fail on MD5 mismatch if true, or correct (overwrite) the checksums and continue
    if false. (default: false)'
  type: boolean?
  inputBinding:
    prefix: --ignore-md5-mismatch
- id: in_ignore_tags
  doc: "Ignore the tags listed, for example 'OQ:XA:XB' (default: )"
  type: boolean?
  inputBinding:
    prefix: --ignore-tags
- id: in_inject_sq_uri
  doc: 'Inject or change the @SQ:UR header fields to point to ENA reference service.  (default:
    false)'
  type: boolean?
  inputBinding:
    prefix: --inject-sq-uri
- id: in_input_bam_file
  doc: Path to a BAM file to be converted to CRAM. Omit if standard input (pipe).
  type: boolean?
  inputBinding:
    prefix: --input-bam-file
- id: in_input_is_sam
  doc: 'Input is in SAM format. (default: false)'
  type: boolean?
  inputBinding:
    prefix: --input-is-sam
- id: in_lossless_quality_score
  doc: "Preserve all quality scores. Overwrites '--lossless-quality-score'. (default:\
    \ false)"
  type: boolean?
  inputBinding:
    prefix: --lossless-quality-score
- id: in_lossy_quality_score_spec
  doc: 'A string specifying what quality scores should be preserved. (default: )'
  type: boolean?
  inputBinding:
    prefix: --lossy-quality-score-spec
- id: in_max_records
  doc: 'Stop after compressing this many records.  (default: 9223372036854775807)'
  type: boolean?
  inputBinding:
    prefix: --max-records
- id: in_output_cram_file
  doc: The path for the output CRAM file. Omit if standard output (pipe).
  type: File?
  inputBinding:
    prefix: --output-cram-file
- id: in_preserve_read_names
  doc: 'Preserve all read names. (default: false)'
  type: boolean?
  inputBinding:
    prefix: --preserve-read-names
- id: in_reference_fast_a_file
  doc: The reference fasta file, uncompressed and indexed (.fai file, use 'samtools
    faidx').
  type: boolean?
  inputBinding:
    prefix: --reference-fasta-file
- id: in_log_level
  doc: 'Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)'
  type: boolean?
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
- id: out_output_cram_file
  doc: The path for the output CRAM file. Omit if standard output (pipe).
  type: File?
  outputBinding:
    glob: $(inputs.in_output_cram_file)
hints: []
cwlVersion: v1.1
baseCommand:
- cramtools
- cram
