class: CommandLineTool
id: hicPlotMatrix.cwl
inputs:
- id: in_matrix
  doc: Path of the Hi-C matrix to plot.
  type: File?
  inputBinding:
    prefix: --matrix
- id: in_out_filename
  doc: File name to save the image.
  type: File?
  inputBinding:
    prefix: --outFileName
- id: in_title
  doc: Plot title.
  type: string?
  inputBinding:
    prefix: --title
- id: in_score_name
  doc: Score name label for the heatmap legend.
  type: string?
  inputBinding:
    prefix: --scoreName
- id: in_per_chromosome
  doc: "Instead of plotting the whole matrix, each chromosome\nis plotted next to\
    \ the other. This parameter is not\ncompatible with --region."
  type: boolean?
  inputBinding:
    prefix: --perChromosome
- id: in_clear_masked_bins
  doc: "If set, masked bins are removed from the matrix and\nthe nearest bins are\
    \ extended to cover the empty space\ninstead of plotting black lines."
  type: boolean?
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
  type: long?
  inputBinding:
    prefix: --region
- id: in_region_one_dot
  doc: Plot the log1p of the matrix values.
  type: boolean?
  inputBinding:
    prefix: --region1.
- id: in_log
  doc: Plot the *MINUS* log of the matrix values.
  type: boolean?
  inputBinding:
    prefix: --log
- id: in_colormap
  doc: "Color map to use for the heatmap. Available values can\nbe seen here: http://matplotlib.org/examples/color/col\n\
    ormaps_reference.html (Default: RdYlBu_r)."
  type: string?
  inputBinding:
    prefix: --colorMap
- id: in_vmin
  doc: Minimum score value.
  type: string?
  inputBinding:
    prefix: --vMin
- id: in_vmax
  doc: Maximum score value.
  type: string?
  inputBinding:
    prefix: --vMax
- id: in_dpi
  doc: "Resolution for the image in case theoutput is a raster\ngraphics image (e.g\
    \ png, jpg) (Default: 72)."
  type: long?
  inputBinding:
    prefix: --dpi
- id: in_bigwig
  doc: "Bigwig file to plot below the matrix. This can for\nexample be used to visualize\
    \ A/B compartments or ChIP-\nseq data."
  type: string[]
  inputBinding:
    prefix: --bigwig
- id: in_bigwig_additional_vertical_axis
  doc: "Add an additional axis to determine the values of a\nbigwig file in 2D better."
  type: boolean?
  inputBinding:
    prefix: --bigwigAdditionalVerticalAxis
- id: in_vmin_bigwig
  doc: Minimum score value for bigwig.
  type: string?
  inputBinding:
    prefix: --vMinBigwig
- id: in_vmax_bigwig
  doc: Maximum score value for bigwig
  type: string?
  inputBinding:
    prefix: --vMaxBigwig
- id: in_flip_bigwig_sign
  doc: "The sign of the bigwig values are flipped. Useful if\nhicPCA gives inverted\
    \ values."
  type: boolean?
  inputBinding:
    prefix: --flipBigwigSign
- id: in_scale_factor_bigwig
  doc: "Scale the values of a bigwig file by the given factor\n(Default: 1.0)."
  type: File?
  inputBinding:
    prefix: --scaleFactorBigwig
- id: in_font_size
  doc: 'Fontsize in the plot for x and y axis (Default: 10).'
  type: long?
  inputBinding:
    prefix: --fontsize
- id: in_rotation_x
  doc: "Rotation in degrees for the labels of x axis (Default:\n0)."
  type: long?
  inputBinding:
    prefix: --rotationX
- id: in_rotation_y
  doc: "Rotation in degrees for the labels of y axis (Default:\n0)."
  type: long?
  inputBinding:
    prefix: --rotationY
- id: in_increase_figure_width
  doc: "Plotting additional bigwig tracks can cause\ncompression in x or y direction\
    \ of the heatmap. Set\nthis factor to a value unequal to 0 to correct this\n(Default:\
    \ 0.5)."
  type: double?
  inputBinding:
    prefix: --increaseFigureWidth
- id: in_increase_figure_height
  doc: "Plotting additional bigwig tracks can cause\ncompression in x or y direction\
    \ of the heatmap. Set\nthis factor to a value unequal to 0 to correct this\n(Default:\
    \ 0.5)."
  type: double?
  inputBinding:
    prefix: --increaseFigureHeight
- id: in_loops
  doc: "Bedgraph file to plot detected long range contacts\nfrom hicDetectLoops."
  type: File?
  inputBinding:
    prefix: --loops
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: File name to save the image.
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hicexplorer:3.6--py_0
cwlVersion: v1.1
baseCommand:
- hicPlotMatrix
