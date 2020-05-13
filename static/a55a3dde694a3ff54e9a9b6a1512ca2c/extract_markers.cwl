class: CommandLineTool
id: extract_markers.py.cwl
inputs:
- id: database
  doc: The input MetaPhlAn dtabase
  type: string
  inputBinding:
    prefix: --database
- id: clade
  doc: The clades to investigate
  type: string
  inputBinding:
    prefix: --clade
- id: output_dir
  doc: The output directory
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_markers.py
