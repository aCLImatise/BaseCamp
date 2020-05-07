class: CommandLineTool
id: cramtools_getref.cwl
inputs:
- id: destination_file
  doc: Destination file.
  type: boolean
  inputBinding:
    prefix: --destination-file
- id: fast_a_line_length
  doc: 'Wrap fasta lines accroding to this value. (default: 80)'
  type: boolean
  inputBinding:
    prefix: --fasta-line-length
- id: gzip
  doc: 'Compress fasta with gzip. (default: false)'
  type: boolean
  inputBinding:
    prefix: --gzip
- id: ignore_not_found
  doc: "Don't fail on not found sequences, just issue a warning. (default: false)"
  type: boolean
  inputBinding:
    prefix: --ignore-not-found
- id: input_file
  doc: The path to the CRAM or BAM file to extract sequence MD5 checksums.
  type: boolean
  inputBinding:
    prefix: --input-file
- id: log_level
  doc: 'Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)'
  type: boolean
  inputBinding:
    prefix: --log-level
outputs: []
cwlVersion: v1.1
baseCommand:
- cramtools
- getref
