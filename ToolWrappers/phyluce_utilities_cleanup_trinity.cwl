class: CommandLineTool
id: phyluce_utilities_cleanup_trinity.cwl
inputs:
- id: in_path_to_clean
  doc: The directory holding the trinity files to clean
  type: File
  inputBinding:
    prefix: --path-to-clean
- id: in_verbosity
  doc: The logging level to use
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: The path to a directory to hold logs.
  type: File
  inputBinding:
    prefix: --log-path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_utilities_cleanup_trinity
