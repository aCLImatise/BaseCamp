class: CommandLineTool
id: ../../../mb_plot_metagene_nobs.cwl
inputs:
- id: in_downstream
  doc: set downstream range
  type: string
  inputBinding:
    prefix: --downstream
- id: in_upstream
  doc: set upstream range
  type: string
  inputBinding:
    prefix: --upstream
- id: in_gene
  doc: set gene range
  type: string
  inputBinding:
    prefix: --gene
- id: in_min
  doc: minimum transcript size
  type: long
  inputBinding:
    prefix: --min
- id: in_max
  doc: maximum transcript size
  type: long
  inputBinding:
    prefix: --max
- id: in_plot_smooth
  doc: half of the window size used for the running mean
  type: long
  inputBinding:
    prefix: --plotSmooth
- id: in_label_center_a
  doc: plot label for the first center position
  type: string
  inputBinding:
    prefix: --labelCenterA
- id: in_label_body
  doc: for body (between A and B)
  type: string
  inputBinding:
    prefix: --labelBody
- id: in_label_center_b
  doc: plot label for the second center position
  type: string
  inputBinding:
    prefix: --labelCenterB
- id: in_title
  doc: plot title
  type: string
  inputBinding:
    prefix: --title
- id: in_remove
  doc: remove temporary files
  type: boolean
  inputBinding:
    prefix: --remove
- id: in_verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-plot-metagene-nobs
