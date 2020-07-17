class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/samFLAGinfo.pl.orig.cwl
inputs:
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sam_flag_info_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: int
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- samFLAGinfo.pl.orig
