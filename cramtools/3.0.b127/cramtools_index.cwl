class: CommandLineTool
id: cramtools_index.cwl
inputs:
- id: index_file
  doc: Write index to this file.
  type: boolean
  inputBinding:
    prefix: --index-file
- id: index_format
  doc: 'Choose between BAM index (bai) and CRAM index (crai).  (default: CRAI)'
  type: boolean
  inputBinding:
    prefix: --index-format
- id: input_file
  doc: Path to a BAM or CRAM file to be indexed. Omit if standard input (pipe).
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
- index
