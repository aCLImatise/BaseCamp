class: CommandLineTool
id: prophyle_download.cwl
inputs:
- id: in_directory_tree_sequences
  doc: directory for the tree and the sequences [~/prophyle]
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_log_file
  doc: log file
  type: File?
  inputBinding:
    prefix: -l
- id: in_rewrite_library_files
  doc: rewrite library files if they already exist
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_advanced_configuration_json
  doc: '[STR [STR ...]]  advanced configuration (a JSON dictionary)'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_str
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- prophyle
- download
