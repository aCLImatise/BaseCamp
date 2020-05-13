class: CommandLineTool
id: cramtools_fastq.cwl
inputs:
- id: default_quality_score
  doc: 'Use this quality score (decimal representation of ASCII symbol) as a default
    value when the original quality score was lost due to compression. Minimum is
    33. (default: 63)'
  type: boolean
  inputBinding:
    prefix: --default-quality-score
- id: enumerate
  doc: 'Append read names with read index (/1 for first in pair, /2 for second in
    pair). (default: false)'
  type: boolean
  inputBinding:
    prefix: --enumerate
- id: fast_q_base_name
  doc: "'_number.fastq[.gz] will be appended to this string to obtain output fastq\
    \ file name. If this parameter is omitted then all reads are printed with no garanteed\
    \ order."
  type: boolean
  inputBinding:
    prefix: --fastq-base-name
- id: gzip
  doc: 'Compress fastq files with gzip. (default: false)'
  type: boolean
  inputBinding:
    prefix: --gzip
- id: ignore_md5_mismatch
  doc: 'Issue a warning on sequence MD5 mismatch and continue. This does not garantee
    the data will be read succesfully.  (default: false)'
  type: boolean
  inputBinding:
    prefix: --ignore-md5-mismatch
- id: input_cram_file
  doc: The path to the CRAM file to uncompress. Omit if standard input (pipe).
  type: boolean
  inputBinding:
    prefix: --input-cram-file
- id: max_records
  doc: 'Stop after reading this many records. (default: -1)'
  type: boolean
  inputBinding:
    prefix: --max-records
- id: read_name_prefix
  doc: Replace read names with this prefix and a sequential integer.
  type: boolean
  inputBinding:
    prefix: --read-name-prefix
- id: reference_fast_a_file
  doc: "Path to the reference fasta file, it must be uncompressed and indexed (use\
    \ 'samtools faidx' for example). "
  type: boolean
  inputBinding:
    prefix: --reference-fasta-file
- id: reverse
  doc: 'Re-reverse reads mapped to negative strand. (default: false)'
  type: boolean
  inputBinding:
    prefix: --reverse
- id: skip_md5_check
  doc: 'Skip MD5 checks when reading the header. (default: false)'
  type: boolean
  inputBinding:
    prefix: --skip-md5-check
- id: log_level
  doc: 'Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)'
  type: boolean
  inputBinding:
    prefix: --log-level
outputs: []
cwlVersion: v1.1
baseCommand:
- cramtools
- fastq
