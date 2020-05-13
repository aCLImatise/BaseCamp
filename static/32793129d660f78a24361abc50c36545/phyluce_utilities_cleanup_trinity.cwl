class: CommandLineTool
id: phyluce_utilities_cleanup_trinity.cwl
inputs:
- id: path_to_clean
  doc: The directory holding the trinity files to clean
  type: File
  inputBinding:
    prefix: --path-to-clean
- id: verbosity
  doc: The logging level to use
  type: string
  inputBinding:
    prefix: --verbosity
- id: log_path
  doc: The path to a directory to hold logs.
  type: string
  inputBinding:
    prefix: --log-path
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_utilities_cleanup_trinity
