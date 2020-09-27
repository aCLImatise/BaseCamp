class: CommandLineTool
id: runCompareTwoGenomesColinear.sh.cwl
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
- runCompareTwoGenomesColinear.sh
