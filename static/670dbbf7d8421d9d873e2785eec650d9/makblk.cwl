class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/makblk.pl.cwl
inputs:
- id: use_reduced_alphabet
  doc: ':     use reduced alphabet'
  type: boolean
  inputBinding:
    prefix: -r
- id: x_dot_dot_dot
  doc: transferred to spaln
  type: boolean
  inputBinding:
    prefix: -X...
- id: wx_dot
  doc: ''
  type: boolean
  inputBinding:
    prefix: -Wx.
- id: k
  doc: ''
  type: boolean
  inputBinding:
    prefix: -K
- id: or
  doc: makblk.pl [-Wx.[bkn|bkp|bka] -K[D|P|S]] [options] x.grp
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- makblk.pl
