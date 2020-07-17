class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/color_chrs.pl.cwl
inputs:
- id: colors
  doc: File with list of "chr hap color".
  type: File
  inputBinding:
    prefix: --colors
- id: prefix
  doc: Prefix of output files.
  type: string
  inputBinding:
    prefix: --prefix
- id: output_dot_dat
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- color-chrs.pl
