#!/usr/bin/env cwl-runner

baseCommand:
- hicPlotViewpoint
class: CommandLineTool
cwlVersion: v1.0
id: hicplotviewpoint
inputs:
- doc: Hi-C matrix to plot.
  id: matrix
  inputBinding:
    prefix: --matrix
  type:
    items: string
    type: array
- doc: The format is chr:start-end.
  id: region
  inputBinding:
    prefix: --region
  type: string
- doc: File name of the image to save.
  id: out_filename
  inputBinding:
    prefix: --outFileName
  type: string
- doc: "Reference point. Needs to be in the format: 'chr:100' for a single reference\
    \ point or 'chr:100-200' for a reference region."
  id: reference_point
  inputBinding:
    prefix: --referencePoint
  type: string
- doc: 'Optional parameter: Only show results for this chromosome.'
  id: chromosome
  inputBinding:
    prefix: --chromosome
  type: string
- doc: 'Optional parameter: If set, a bedgraph file with all interaction will be created.'
  id: interaction_out_filename
  inputBinding:
    prefix: --interactionOutFileName
  type: long
- doc: 'Optional parameter: Resolution for the image in case theouput is a raster
    graphics image (e.g png, jpg).'
  id: dpi
  inputBinding:
    prefix: --dpi
  type: string
