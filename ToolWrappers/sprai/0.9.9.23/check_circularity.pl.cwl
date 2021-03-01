class: CommandLineTool
id: check_circularity.pl.cwl
inputs:
- id: in_check_circu_rarity_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- check_circularity.pl
