class: CommandLineTool
id: hicPlotMatrix.cwl
inputs:
- id: in_matrix
  doc: Path of the Hi-C matrix to plot.
  type: File
  inputBinding:
    prefix: --matrix
- id: in_out_filename
  doc: File name to save the image.
  type: File
  inputBinding:
    prefix: --outFileName
- id: in_title
  doc: Plot title.
  type: string
  inputBinding:
    prefix: --title
- id: in_score_name
  doc: Score name label for the heatmap legend.
  type: string
  inputBinding:
    prefix: --scoreName
- id: in_per_chromosome
  doc: "Instead of plotting the whole matrix, each chromosome\nis plotted next to\
    \ the other. This parameter is not\ncompatible with --region."
  type: boolean
  inputBinding:
    prefix: --perChromosome
- id: in_clear_masked_bins
  doc: "If set, masked bins are removed from the matrix and\nthe nearest bins are\
    \ extended to cover the empty space\ninstead of plotting black lines."
  type: boolean
  inputBinding:
    prefix: --clearMaskedBins
- id: in_chromosome_order
  doc: "Chromosomes and order in which the chromosomes should\nbe plotted. This option\
    \ overrides --region and\n--region2."
  type: string[]
  inputBinding:
    prefix: --chromosomeOrder
- id: in_region
  doc: "Plot only this region. The format is chr:start-end The\nplotted region contains\
    \ the main diagonal and is\nsymmetric unless --region2 is given."
  type: long
  inputBinding:
    prefix: --region
- id: in_region_two
  doc: "If given, then only the region defined by --region and\n--region2 is given.\
    \ The format is the same as\n--region1."
  type: long
  inputBinding:
    prefix: --region2
- id: in_logo_nep
  doc: "Plot the log1p of the matrix values.\n--log                 Plot the *MINUS*\
    \ log of the matrix values.\n--colorMap COLORMAP   Color map to use for the heatmap.\
    \ Available values can\nbe seen here: http://matplotlib.org/examples/color/col\n\
    ormaps_reference.html\n--vMin VMIN           Minimum score value.\n--vMax VMAX\
    \           Maximum score value.\n--dpi DPI             Resolution for the image\
    \ in case theoutput is a raster\ngraphics image (e.g png, jpg).\n--bigwig BIGWIG\
    \ [BIGWIG ...]\nBigwig file to plot below the matrix. This can for\nexample be\
    \ used to visualize A/B compartments or ChIP-\nseq data.\n--bigwigAdditionalVerticalAxis\n\
    Add an additional axis to determine the values of a\nbigwig file in 2D better.\n\
    --vMinBigwig VMINBIGWIG\nMinimum score value for bigwig.\n--vMaxBigwig VMAXBIGWIG\n\
    Maximum score value for bigwig\n--flipBigwigSign      The sign of the bigwig values\
    \ are flipped. Useful if\nhicPCA gives inverted values.\n--scaleFactorBigwig SCALEFACTORBIGWIG\n\
    Scale the values of a bigwig file by the given factor.\n--fontsize FONTSIZE  \
    \ Fontsize in the plot for x and y axis.\n--rotationX ROTATIONX\nRotation in degrees\
    \ for the labels of x axis.\n--rotationY ROTATIONY\nRotation in degrees for the\
    \ labels of y axis.\n--increaseFigureWidth INCREASEFIGUREWIDTH\nPlotting additional\
    \ bigwig tracks can cause\ncompression in x or y direction of the heatmap. Set\n\
    this factor to a value unequal to 0 to correct this.\n--increaseFigureHeight INCREASEFIGUREHEIGHT\n\
    Plotting additional bigwig tracks can cause\ncompression in x or y direction of\
    \ the heatmap. Set\nthis factor to a value unequal to 0 to correct this.\n--loops\
    \ LOOPS         Bedgraph file to plot detected long range contacts\nfrom hicDetectLoops.\n\
    --help, -h            show this help message and exit\n--version             show\
    \ program's version number and exit\n"
  type: boolean
  inputBinding:
    prefix: --log1p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: File name to save the image.
  type: File
  outputBinding:
    glob: $(inputs.in_out_filename)
cwlVersion: v1.1
baseCommand:
- hicPlotMatrix
