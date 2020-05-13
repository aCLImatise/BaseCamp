class: CommandLineTool
id: main_document.sh.cwl
inputs:
- id: output_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: script_path
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: run_info
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- main_document.sh
