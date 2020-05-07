class: CommandLineTool
id: hicPlotViewpoint.cwl
inputs:
- id: matrix
  doc: Hi-C matrix to plot.
  type: string[]
  inputBinding:
    prefix: --matrix
- id: region
  doc: The format is chr:start-end.
  type: string
  inputBinding:
    prefix: --region
- id: out_filename
  doc: File name of the image to save.
  type: string
  inputBinding:
    prefix: --outFileName
- id: reference_point
  doc: "Reference point. Needs to be in the format: 'chr:100' for a single reference\
    \ point or 'chr:100-200' for a reference region."
  type: string
  inputBinding:
    prefix: --referencePoint
- id: chromosome
  doc: 'Optional parameter: Only show results for this chromosome.'
  type: string
  inputBinding:
    prefix: --chromosome
- id: interaction_out_filename
  doc: 'Optional parameter: If set, a bedgraph file with all interaction will be created.'
  type: long
  inputBinding:
    prefix: --interactionOutFileName
- id: dpi
  doc: 'Optional parameter: Resolution for the image in case theouput is a raster
    graphics image (e.g png, jpg).'
  type: string
  inputBinding:
    prefix: --dpi
outputs: []
cwlVersion: v1.1
baseCommand:
- hicPlotViewpoint
