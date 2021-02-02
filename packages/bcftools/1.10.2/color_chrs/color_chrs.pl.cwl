class: CommandLineTool
id: color_chrs.pl.cwl
inputs:
- id: in_colors
  doc: File with list of "chr hap color".
  type: File
  inputBinding:
    prefix: --colors
- id: in_prefix
  doc: Prefix of output files.
  type: string
  inputBinding:
    prefix: --prefix
- id: in_output_dot_dat
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- color-chrs.pl
