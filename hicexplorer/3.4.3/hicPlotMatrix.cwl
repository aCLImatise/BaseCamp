#!/usr/bin/env cwl-runner

baseCommand:
- hicPlotMatrix
class: CommandLineTool
cwlVersion: v1.0
id: hicplotmatrix
inputs:
- doc: Path of the Hi-C matrix to plot.
  id: matrix
  inputBinding:
    prefix: --matrix
  type: string
- doc: File name to save the image.
  id: out_filename
  inputBinding:
    prefix: --outFileName
  type: string
- doc: Plot title.
  id: title
  inputBinding:
    prefix: --title
  type: string
- doc: Score name label for the heatmap legend.
  id: score_name
  inputBinding:
    prefix: --scoreName
  type: string
- doc: Instead of plotting the whole matrix, each chromosome is plotted next to the
    other. This parameter is not compatible with --region.
  id: per_chromosome
  inputBinding:
    prefix: --perChromosome
  type: boolean
- doc: If set, masked bins are removed from the matrix and the nearest bins are extended
    to cover the empty space instead of plotting black lines.
  id: clear_masked_bins
  inputBinding:
    prefix: --clearMaskedBins
  type: boolean
- doc: Chromosomes and order in which the chromosomes should be plotted. This option
    overrides --region and --region2.
  id: chromosome_order
  inputBinding:
    prefix: --chromosomeOrder
  type:
    items: string
    type: array
- doc: Plot only this region. The format is chr:start-end The plotted region contains
    the main diagonal and is symmetric unless --region2 is given.
  id: region
  inputBinding:
    prefix: --region
  type: string
- doc: If given, then only the region defined by --region and --region2 is given.
    The format is the same as --region1.
  id: region_2
  inputBinding:
    prefix: --region2
  type: string
- doc: Plot the log1p of the matrix values.
  id: log1p
  inputBinding:
    prefix: --log1p
  type: boolean
- doc: Plot the *MINUS* log of the matrix values.
  id: log
  inputBinding:
    prefix: --log
  type: boolean
- doc: 'Color map to use for the heatmap. Available values can be seen here: http://matplotlib.org/examples/color/col
    ormaps_reference.html'
  id: colormap
  inputBinding:
    prefix: --colorMap
  type: string
- doc: Minimum score value.
  id: vmin
  inputBinding:
    prefix: --vMin
  type: string
- doc: Maximum score value.
  id: vmax
  inputBinding:
    prefix: --vMax
  type: string
- doc: Resolution for the image in case theoutput is a raster graphics image (e.g
    png, jpg).
  id: dpi
  inputBinding:
    prefix: --dpi
  type: string
- doc: Bigwig file to plot below the matrix. This can for example be used to visualize
    A/B compartments or ChIP- seq data.
  id: bigwig
  inputBinding:
    prefix: --bigwig
  type:
    items: string
    type: array
- doc: Add an additional axis to determine the values of a bigwig file in 2D better.
  id: bigwig_additional_vertical_axis
  inputBinding:
    prefix: --bigwigAdditionalVerticalAxis
  type: boolean
- doc: Minimum score value for bigwig.
  id: vmin_bigwig
  inputBinding:
    prefix: --vMinBigwig
  type: string
- doc: Maximum score value for bigwig
  id: vmax_bigwig
  inputBinding:
    prefix: --vMaxBigwig
  type: string
- doc: The sign of the bigwig values are flipped. Useful if hicPCA gives inverted
    values.
  id: flip_bigwig_sign
  inputBinding:
    prefix: --flipBigwigSign
  type: boolean
- doc: Scale the values of a bigwig file by the given factor.
  id: scale_factor_bigwig
  inputBinding:
    prefix: --scaleFactorBigwig
  type: string
- doc: Fontsize in the plot for x and y axis.
  id: font_size
  inputBinding:
    prefix: --fontsize
  type: string
- doc: Rotation in degrees for the labels of x axis.
  id: rotation_x
  inputBinding:
    prefix: --rotationX
  type: string
- doc: Rotation in degrees for the labels of y axis.
  id: rotation_y
  inputBinding:
    prefix: --rotationY
  type: string
- doc: Bedgraph file to plot detected long range contacts from hicDetectLoops.
  id: loops
  inputBinding:
    prefix: --loops
  type: string
