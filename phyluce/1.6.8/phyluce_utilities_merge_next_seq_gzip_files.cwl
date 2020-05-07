class: CommandLineTool
id: phyluce_utilities_merge_next_seq_gzip_files.cwl
inputs:
- id: input
  doc: The path to a directory containing the reads to merge.
  type: string
  inputBinding:
    prefix: --input
- id: config
  doc: The path to the config file to use for merging.
  type: string
  inputBinding:
    prefix: --config
- id: output
  doc: The path to a directory in which to store the output.
  type: string
  inputBinding:
    prefix: --output
- id: section
  doc: The section holding the merge info.
  type: string
  inputBinding:
    prefix: --section
- id: verbosity
  doc: The logging level to use.
  type: string
  inputBinding:
    prefix: --verbosity
- id: log_path
  doc: The path to a directory to hold logs.
  type: string
  inputBinding:
    prefix: --log-path
- id: se
  doc: Run is single-end.
  type: boolean
  inputBinding:
    prefix: --se
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_utilities_merge_next_seq_gzip_files
