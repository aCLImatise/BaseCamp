class: CommandLineTool
id: cleanspace.sh.cwl
inputs:
- id: run_info_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- cleanspace.sh
