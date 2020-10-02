class: CommandLineTool
id: cramtools_getref.cwl
inputs:
- id: in_destination_file
  doc: Destination file.
  type: boolean
  inputBinding:
    prefix: --destination-file
- id: in_fast_a_line_length
  doc: 'Wrap fasta lines accroding to this value. (default: 80)'
  type: boolean
  inputBinding:
    prefix: --fasta-line-length
- id: in_gzip
  doc: 'Compress fasta with gzip. (default: false)'
  type: boolean
  inputBinding:
    prefix: --gzip
- id: in_ignore_not_found
  doc: "Don't fail on not found sequences, just issue a warning. (default: false)"
  type: boolean
  inputBinding:
    prefix: --ignore-not-found
- id: in_input_file
  doc: The path to the CRAM or BAM file to extract sequence MD5 checksums.
  type: boolean
  inputBinding:
    prefix: --input-file
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
cwlVersion: v1.1
baseCommand:
- cramtools
- getref
