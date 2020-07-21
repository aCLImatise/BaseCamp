class: CommandLineTool
id: ../../../annotateBed_2way.pl.cwl
inputs:
- id: an_no
  doc: ''
  type: string
  inputBinding:
    prefix: --anno
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: annotate_bed_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: bed_slash_gff_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: summary_file_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- annotateBed_2way.pl
