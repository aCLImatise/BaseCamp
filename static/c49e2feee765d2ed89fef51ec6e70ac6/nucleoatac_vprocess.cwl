class: CommandLineTool
id: nucleoatac_vprocess.cwl
inputs:
- id: in_v_plot
  doc: Accepts VMat file. Default is Vplot from S. Cer.
  type: File?
  inputBinding:
    prefix: --vplot
- id: in_lower
  doc: lower limit (inclusive) in insert size. default is 105
  type: long?
  inputBinding:
    prefix: --lower
- id: in_upper
  doc: upper limit (exclusive) in insert size. default 251
  type: long?
  inputBinding:
    prefix: --upper
- id: in_flank
  doc: distance on each side of dyad to include
  type: long?
  inputBinding:
    prefix: --flank
- id: in_smooth
  doc: SD to use for gaussian smoothing. Use 0 for no
  type: double?
  inputBinding:
    prefix: --smooth
- id: in_sizes
  doc: ''
  type: File?
  inputBinding:
    prefix: --sizes
- id: in_out
  doc: ''
  type: string?
  inputBinding:
    prefix: --out
- id: in_optional
  doc: --sizes file          Insert distribution file
  type: string
  inputBinding:
    position: 0
- id: in_smoothing_dot
  doc: --plot_extra          Make some additional plots
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
- nucleoatac
- vprocess
