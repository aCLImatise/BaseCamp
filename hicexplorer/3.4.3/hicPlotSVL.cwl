#!/usr/bin/env cwl-runner

baseCommand:
- hicPlotSVL
class: CommandLineTool
cwlVersion: v1.0
id: hicplotsvl
inputs:
- doc: The matrix (or multiple matrices) to use for the comparison
  id: matrices
  inputBinding:
    prefix: --matrices
  type:
    items: string
    type: array
- doc: Plot name.
  id: plot_filename
  inputBinding:
    prefix: --plotFileName
  type: string
- doc: File the p-values are written to, p-values are only computed if at least two
    matrices are given.
  id: out_filename
  inputBinding:
    prefix: --outFileName
  type: string
- doc: File the computed ratios are written to.
  id: out_filename_data
  inputBinding:
    prefix: --outFileNameData
  type: string
- doc: Distance which should be considered as short range. Default 2MB.
  id: distance
  inputBinding:
    prefix: --distance
  type: string
- doc: Chromosomes to include in the analysis. If not set, all chromosomes are included.
  id: chromosomes
  inputBinding:
    prefix: --chromosomes
  type:
    items: string
    type: array
- doc: Number of threads. Using the python multiprocessing module.
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: 'Optional parameter: Resolution for the image in case theoutput is a raster
    graphics image (e.g png, jpg)'
  id: dpi
  inputBinding:
    prefix: --dpi
  type: string
- doc: Colorlist for the boxplots.
  id: color_list
  inputBinding:
    prefix: --colorList
  type:
    items: string
    type: array
