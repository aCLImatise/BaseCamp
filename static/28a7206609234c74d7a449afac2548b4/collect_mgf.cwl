class: CommandLineTool
id: collect_mgf.cwl
inputs:
- id: in_exp_no_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 0
- id: in_dd_results_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- collect_mgf
