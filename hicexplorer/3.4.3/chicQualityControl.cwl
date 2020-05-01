#!/usr/bin/env cwl-runner

baseCommand:
- chicQualityControl
class: CommandLineTool
cwlVersion: v1.0
id: chicqualitycontrol
inputs:
- doc: The input matrices to apply the QC on.
  id: matrices
  inputBinding:
    prefix: --matrices
  type:
    items: string
    type: array
- doc: Bed file contains all reference points which are checked for a sufficient number
    of interactions.
  id: reference_points
  inputBinding:
    prefix: --referencePoints
  type: string
- doc: Viewpoints with a sparsity less than the value given are considered of bad
    quality. If multiple matrices are given, the viewpoint is removed as soon as it
    is of bad quality in at least one matrix.
  id: sparsity
  inputBinding:
    prefix: --sparsity
  type: string
- doc: The output file name of the passed reference points. Used as prefix for the
    plots as well.
  id: out_filename
  inputBinding:
    prefix: --outFileName
  type: string
- doc: The output file for the histogram plot.
  id: out_filename_histogram
  inputBinding:
    prefix: --outFileNameHistogram
  type: string
- doc: The output file for the sparsity distribution plot.
  id: out_filename_sparsity
  inputBinding:
    prefix: --outFileNameSparsity
  type: string
- doc: Number of threads.
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Fixate score of background model starting at distance x. E.g. all values greater
    than 500kb are set to the value of the 500kb bin.
  id: fixate_range
  inputBinding:
    prefix: --fixateRange
  type: string
- doc: 'Optional parameter: Resolution for the image if theoutput is a raster graphics
    image (e.g png, jpg)'
  id: dpi
  inputBinding:
    prefix: --dpi
  type: string
