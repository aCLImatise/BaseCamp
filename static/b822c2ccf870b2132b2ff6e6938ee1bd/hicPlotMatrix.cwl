class: CommandLineTool
id: hicPlotMatrix.cwl
inputs:
- id: matrix
  doc: Path of the Hi-C matrix to plot.
  type: string
  inputBinding:
    prefix: --matrix
- id: out_filename
  doc: File name to save the image.
  type: string
  inputBinding:
    prefix: --outFileName
- id: title
  doc: Plot title.
  type: string
  inputBinding:
    prefix: --title
- id: score_name
  doc: Score name label for the heatmap legend.
  type: string
  inputBinding:
    prefix: --scoreName
- id: per_chromosome
  doc: Instead of plotting the whole matrix, each chromosome is plotted next to the
    other. This parameter is not compatible with --region.
  type: boolean
  inputBinding:
    prefix: --perChromosome
- id: clear_masked_bins
  doc: If set, masked bins are removed from the matrix and the nearest bins are extended
    to cover the empty space instead of plotting black lines.
  type: boolean
  inputBinding:
    prefix: --clearMaskedBins
- id: chromosome_order
  doc: Chromosomes and order in which the chromosomes should be plotted. This option
    overrides --region and --region2.
  type: string[]
  inputBinding:
    prefix: --chromosomeOrder
- id: region
  doc: Plot only this region. The format is chr:start-end The plotted region contains
    the main diagonal and is symmetric unless --region2 is given.
  type: string
  inputBinding:
    prefix: --region
- id: region_2
  doc: If given, then only the region defined by --region and --region2 is given.
    The format is the same as --region1.
  type: string
  inputBinding:
    prefix: --region2
- id: log1p
  doc: Plot the log1p of the matrix values.
  type: boolean
  inputBinding:
    prefix: --log1p
- id: log
  doc: Plot the *MINUS* log of the matrix values.
  type: boolean
  inputBinding:
    prefix: --log
- id: colormap
  doc: 'Color map to use for the heatmap. Available values can be seen here: http://matplotlib.org/examples/color/col
    ormaps_reference.html'
  type: string
  inputBinding:
    prefix: --colorMap
- id: vmin
  doc: Minimum score value.
  type: string
  inputBinding:
    prefix: --vMin
- id: vmax
  doc: Maximum score value.
  type: string
  inputBinding:
    prefix: --vMax
- id: dpi
  doc: Resolution for the image in case theoutput is a raster graphics image (e.g
    png, jpg).
  type: string
  inputBinding:
    prefix: --dpi
- id: bigwig
  doc: Bigwig file to plot below the matrix. This can for example be used to visualize
    A/B compartments or ChIP- seq data.
  type: string[]
  inputBinding:
    prefix: --bigwig
- id: bigwig_additional_vertical_axis
  doc: Add an additional axis to determine the values of a bigwig file in 2D better.
  type: boolean
  inputBinding:
    prefix: --bigwigAdditionalVerticalAxis
- id: vmin_bigwig
  doc: Minimum score value for bigwig.
  type: string
  inputBinding:
    prefix: --vMinBigwig
- id: vmax_bigwig
  doc: Maximum score value for bigwig
  type: string
  inputBinding:
    prefix: --vMaxBigwig
- id: flip_bigwig_sign
  doc: The sign of the bigwig values are flipped. Useful if hicPCA gives inverted
    values.
  type: boolean
  inputBinding:
    prefix: --flipBigwigSign
- id: scale_factor_bigwig
  doc: Scale the values of a bigwig file by the given factor.
  type: string
  inputBinding:
    prefix: --scaleFactorBigwig
- id: font_size
  doc: Fontsize in the plot for x and y axis.
  type: string
  inputBinding:
    prefix: --fontsize
- id: rotation_x
  doc: Rotation in degrees for the labels of x axis.
  type: string
  inputBinding:
    prefix: --rotationX
- id: rotation_y
  doc: Rotation in degrees for the labels of y axis.
  type: string
  inputBinding:
    prefix: --rotationY
- id: loops
  doc: Bedgraph file to plot detected long range contacts from hicDetectLoops.
  type: string
  inputBinding:
    prefix: --loops
outputs: []
cwlVersion: v1.1
baseCommand:
- hicPlotMatrix
