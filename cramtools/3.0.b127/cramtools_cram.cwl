class: CommandLineTool
id: cramtools_cram.cwl
inputs:
- id: capture_all_tags
  doc: 'Capture all tags. (default: false)'
  type: boolean
  inputBinding:
    prefix: --capture-all-tags
- id: capture_tags
  doc: "Capture the tags listed, for example 'OQ:XA:XB' (default: )"
  type: boolean
  inputBinding:
    prefix: --capture-tags
- id: encrypt
  doc: 'Encrypt the CRAM file. (default: false)'
  type: boolean
  inputBinding:
    prefix: --encrypt
- id: ignore_md5_mismatch
  doc: 'Fail on MD5 mismatch if true, or correct (overwrite) the checksums and continue
    if false. (default: false)'
  type: boolean
  inputBinding:
    prefix: --ignore-md5-mismatch
- id: ignore_tags
  doc: "Ignore the tags listed, for example 'OQ:XA:XB' (default: )"
  type: boolean
  inputBinding:
    prefix: --ignore-tags
- id: inject_sq_uri
  doc: 'Inject or change the @SQ:UR header fields to point to ENA reference service.  (default:
    false)'
  type: boolean
  inputBinding:
    prefix: --inject-sq-uri
- id: input_bam_file
  doc: Path to a BAM file to be converted to CRAM. Omit if standard input (pipe).
  type: boolean
  inputBinding:
    prefix: --input-bam-file
- id: input_is_sam
  doc: 'Input is in SAM format. (default: false)'
  type: boolean
  inputBinding:
    prefix: --input-is-sam
- id: lossless_quality_score
  doc: "Preserve all quality scores. Overwrites '--lossless-quality-score'. (default:\
    \ false)"
  type: boolean
  inputBinding:
    prefix: --lossless-quality-score
- id: lossy_quality_score_spec
  doc: 'A string specifying what quality scores should be preserved. (default: )'
  type: boolean
  inputBinding:
    prefix: --lossy-quality-score-spec
- id: max_records
  doc: 'Stop after compressing this many records.  (default: 9223372036854775807)'
  type: boolean
  inputBinding:
    prefix: --max-records
- id: output_cram_file
  doc: The path for the output CRAM file. Omit if standard output (pipe).
  type: boolean
  inputBinding:
    prefix: --output-cram-file
- id: preserve_read_names
  doc: 'Preserve all read names. (default: false)'
  type: boolean
  inputBinding:
    prefix: --preserve-read-names
- id: reference_fast_a_file
  doc: "The reference fasta file, uncompressed and indexed (.fai file, use 'samtools\
    \ faidx'). "
  type: boolean
  inputBinding:
    prefix: --reference-fasta-file
- id: log_level
  doc: 'Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)'
  type: boolean
  inputBinding:
    prefix: --log-level
outputs: []
cwlVersion: v1.1
baseCommand:
- cramtools
- cram
