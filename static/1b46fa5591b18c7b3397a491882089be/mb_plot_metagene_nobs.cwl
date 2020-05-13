class: CommandLineTool
id: mb_plot_metagene_nobs.cwl
inputs:
- id: par_clip
  doc: path to the PAR-CLIP *.table
  type: string
  inputBinding:
    position: 0
- id: output_dir
  doc: output directory
  type: string
  inputBinding:
    position: 1
- id: prefix
  doc: prefix of filenames
  type: string
  inputBinding:
    position: 2
- id: gff
  doc: GFF file used for plotting
  type: string
  inputBinding:
    position: 3
- id: downstream
  doc: set downstream range
  type: string
  inputBinding:
    prefix: --downstream
- id: upstream
  doc: set upstream range
  type: string
  inputBinding:
    prefix: --upstream
- id: gene
  doc: set gene range
  type: string
  inputBinding:
    prefix: --gene
- id: min
  doc: minimum transcript size
  type: long
  inputBinding:
    prefix: --min
- id: max
  doc: maximum transcript size
  type: long
  inputBinding:
    prefix: --max
- id: plot_smooth
  doc: half of the window size used for the running mean
  type: string
  inputBinding:
    prefix: --plotSmooth
- id: label_center_a
  doc: plot label for the first center position
  type: string
  inputBinding:
    prefix: --labelCenterA
- id: label_body
  doc: for body (between A and B)
  type: string
  inputBinding:
    prefix: --labelBody
- id: label_center_b
  doc: plot label for the second center position
  type: string
  inputBinding:
    prefix: --labelCenterB
- id: title
  doc: plot title
  type: string
  inputBinding:
    prefix: --title
- id: remove
  doc: remove temporary files
  type: boolean
  inputBinding:
    prefix: --remove
- id: verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-plot-metagene-nobs
