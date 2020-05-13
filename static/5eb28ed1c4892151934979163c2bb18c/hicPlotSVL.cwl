class: CommandLineTool
id: hicPlotSVL.cwl
inputs:
- id: matrices
  doc: The matrix (or multiple matrices) to use for the comparison
  type: string[]
  inputBinding:
    prefix: --matrices
- id: plot_filename
  doc: Plot name.
  type: string
  inputBinding:
    prefix: --plotFileName
- id: out_filename
  doc: File the p-values are written to, p-values are only computed if at least two
    matrices are given.
  type: string
  inputBinding:
    prefix: --outFileName
- id: out_filename_data
  doc: File the computed ratios are written to.
  type: string
  inputBinding:
    prefix: --outFileNameData
- id: distance
  doc: Distance which should be considered as short range. Default 2MB.
  type: string
  inputBinding:
    prefix: --distance
- id: chromosomes
  doc: Chromosomes to include in the analysis. If not set, all chromosomes are included.
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: threads
  doc: Number of threads. Using the python multiprocessing module.
  type: string
  inputBinding:
    prefix: --threads
- id: dpi
  doc: 'Optional parameter: Resolution for the image in case theoutput is a raster
    graphics image (e.g png, jpg)'
  type: string
  inputBinding:
    prefix: --dpi
- id: color_list
  doc: Colorlist for the boxplots.
  type: string[]
  inputBinding:
    prefix: --colorList
outputs: []
cwlVersion: v1.1
baseCommand:
- hicPlotSVL
