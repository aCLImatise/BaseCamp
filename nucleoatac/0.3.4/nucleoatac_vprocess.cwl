class: CommandLineTool
id: nucleoatac_vprocess.cwl
inputs:
- id: sizes
  doc: Insert distribution file
  type: File
  inputBinding:
    prefix: --sizes
- id: v_plot
  doc: Accepts VMat file. Default is Vplot from S. Cer.
  type: string
  inputBinding:
    prefix: --vplot
- id: lower
  doc: lower limit (inclusive) in insert size. default is 105
  type: long
  inputBinding:
    prefix: --lower
- id: upper
  doc: upper limit (exclusive) in insert size. default 251
  type: long
  inputBinding:
    prefix: --upper
- id: flank
  doc: distance on each side of dyad to include
  type: long
  inputBinding:
    prefix: --flank
- id: smooth
  doc: SD to use for gaussian smoothing. Use 0 for no smoothing.
  type: double
  inputBinding:
    prefix: --smooth
- id: plot_extra
  doc: Make some additional plots
  type: boolean
  inputBinding:
    prefix: --plot_extra
outputs: []
cwlVersion: v1.1
baseCommand:
- nucleoatac
- vprocess
