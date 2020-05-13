class: CommandLineTool
id: phyluce_utilities_merge_multiple_gzip_files.cwl
inputs:
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
- id: trimmed
  doc: If the reads have already been trimmed.
  type: boolean
  inputBinding:
    prefix: --trimmed
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_utilities_merge_multiple_gzip_files
