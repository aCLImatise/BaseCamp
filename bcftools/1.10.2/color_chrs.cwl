class: CommandLineTool
id: color_chrs.pl.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_dat
  doc: ''
  type: string
  inputBinding:
    position: 1
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
outputs: []
cwlVersion: v1.1
baseCommand:
- color-chrs.pl
