class: CommandLineTool
id: phyluce_utilities_merge_multiple_gzip_files.cwl
inputs:
- id: in_output
  doc: "[--section SECTION]\n[--verbosity {INFO,WARN,CRITICAL}]\n[--log-path LOG_PATH]\n\
    [--trimmed]"
  type: File
  inputBinding:
    prefix: --output
- id: in_config
  doc: The path to the config file to use for merging.
  type: File
  inputBinding:
    prefix: --config
- id: in_section
  doc: The section holding the merge info.
  type: string
  inputBinding:
    prefix: --section
- id: in_verbosity
  doc: The logging level to use.
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: The path to a directory to hold logs.
  type: File
  inputBinding:
    prefix: --log-path
- id: in_trimmed
  doc: If the reads have already been trimmed.
  type: boolean
  inputBinding:
    prefix: --trimmed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_utilities_merge_multiple_gzip_files
