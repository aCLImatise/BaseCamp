class: CommandLineTool
id: makblk.pl.cwl
inputs:
- id: or
  doc: makblk.pl [-Wx.[bkn|bkp|bka] -K[D|P|S]] [options] x.grp
  type: string
  inputBinding:
    position: 0
- id: r
  doc: ':     use reduced alphabet'
  type: boolean
  inputBinding:
    prefix: -r
- id: x
  doc: '...   transferred to spaln'
  type: boolean
  inputBinding:
    prefix: -X
outputs: []
cwlVersion: v1.1
baseCommand:
- makblk.pl
