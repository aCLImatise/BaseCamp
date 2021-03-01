class: CommandLineTool
id: cramtools_fastq.cwl
inputs:
- id: in_default_quality_score
  doc: 'Use this quality score (decimal representation of ASCII symbol) as a default
    value when the original quality score was lost due to compression. Minimum is
    33. (default: 63)'
  type: boolean?
  inputBinding:
    prefix: --default-quality-score
- id: in_enumerate
  doc: 'Append read names with read index (/1 for first in pair, /2 for second in
    pair). (default: false)'
  type: boolean?
  inputBinding:
    prefix: --enumerate
- id: in_fast_q_base_name
  doc: "'_number.fastq[.gz] will be appended to this string to obtain output fastq\
    \ file name. If this parameter is omitted then all reads are printed with no garanteed\
    \ order."
  type: File?
  inputBinding:
    prefix: --fastq-base-name
- id: in_gzip
  doc: 'Compress fastq files with gzip. (default: false)'
  type: boolean?
  inputBinding:
    prefix: --gzip
- id: in_ignore_md_five_mismatch
  doc: 'Issue a warning on sequence MD5 mismatch and continue. This does not garantee
    the data will be read succesfully.  (default: false)'
  type: boolean?
  inputBinding:
    prefix: --ignore-md5-mismatch
- id: in_input_cram_file
  doc: The path to the CRAM file to uncompress. Omit if standard input (pipe).
  type: boolean?
  inputBinding:
    prefix: --input-cram-file
- id: in_max_records
  doc: 'Stop after reading this many records. (default: -1)'
  type: boolean?
  inputBinding:
    prefix: --max-records
- id: in_read_name_prefix
  doc: Replace read names with this prefix and a sequential integer.
  type: boolean?
  inputBinding:
    prefix: --read-name-prefix
- id: in_reference_fast_a_file
  doc: Path to the reference fasta file, it must be uncompressed and indexed (use
    'samtools faidx' for example).
  type: boolean?
  inputBinding:
    prefix: --reference-fasta-file
- id: in_reverse
  doc: 'Re-reverse reads mapped to negative strand. (default: false)'
  type: boolean?
  inputBinding:
    prefix: --reverse
- id: in_skip_md_five_check
  doc: 'Skip MD5 checks when reading the header. (default: false)'
  type: boolean?
  inputBinding:
    prefix: --skip-md5-check
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
- id: out_fast_q_base_name
  doc: "'_number.fastq[.gz] will be appended to this string to obtain output fastq\
    \ file name. If this parameter is omitted then all reads are printed with no garanteed\
    \ order."
  type: File?
  outputBinding:
    glob: $(inputs.in_fast_q_base_name)
hints: []
cwlVersion: v1.1
baseCommand:
- cramtools
- fastq
