class: CommandLineTool
id: runSpruceView.sh.cwl
inputs:
- id: in_cross_match_slash_minimap_two
  doc: PATH-TO-FONTS
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- runSpruceView.sh
