class: CommandLineTool
id: panphlan_download_pangenome.py.cwl
inputs:
- id: in_input_name
  doc: Show progress information
  type: string?
  inputBinding:
    prefix: --input_name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- panphlan_download_pangenome.py
