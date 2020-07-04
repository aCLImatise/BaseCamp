class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/plotHeatmap.cwl
inputs:
- id: matrix_file
  doc: 'Matrix file from the computeMatrix tool. (default: None)'
  type: string
  inputBinding:
    prefix: --matrixFile
- id: out_filename
  doc: 'File name to save the image to. The file ending will be used to determine
    the image format. The available options are: "png", "eps", "pdf" and "svg", e.g.,
    MyHeatmap.png. (default: None)'
  type: string
  inputBinding:
    prefix: --outFileName
- id: outfile_sorted_regions
  doc: 'File name into which the regions are saved after skipping zeros or min/max
    threshold values. The order of the regions in the file follows the sorting order
    selected. This is useful, for example, to generate other heatmaps while keeping
    the sorting of the first heatmap. Example: Heatmap1sortedRegions.bed (default:
    None)'
  type: File
  inputBinding:
    prefix: --outFileSortedRegions
- id: out_filename_matrix
  doc: 'If this option is given, then the matrix of values underlying the heatmap
    will be saved using this name, e.g. MyMatrix.tab. (default: None)'
  type: File
  inputBinding:
    prefix: --outFileNameMatrix
- id: interpolation_method
  doc: 'If the heatmap image contains a large number of columns is usually better
    to use an interpolation method to produce better results (see https://matplotl
    ib.org/examples/images_contours_and_fields/interpolati on_methods.html). Be default,
    plotHeatmap uses the method `nearest` if the number of columns is 1000 or less.
    Otherwise it uses the bilinear method. This default behaviour can be changed by
    using any of the following options: "nearest", "bilinear", "bicubic", "gaussian"
    (default: auto)'
  type: string
  inputBinding:
    prefix: --interpolationMethod
- id: dpi
  doc: 'Set the DPI to save the figure. (default: 200)'
  type: string
  inputBinding:
    prefix: --dpi
- id: k_means
  doc: 'Number of clusters to compute. When this option is set, the matrix is split
    into clusters using the k-means algorithm. Only works for data that is not grouped,
    otherwise only the first group will be clustered. If more specific clustering
    methods are required, then save the underlying matrix and run the clustering using
    other software. The plotting of the clustering may fail with an error if a cluster
    has very few members compared to the total number or regions. (default: None)'
  type: string
  inputBinding:
    prefix: --kmeans
- id: hc_lust
  doc: 'Number of clusters to compute. When this option is set, then the matrix is
    split into clusters using the hierarchical clustering algorithm, using "ward linkage".
    Only works for data that is not grouped, otherwise only the first group will be
    clustered. --hclust could be very slow if you have >1000 regions. In those cases,
    you might prefer --kmeans or if more clustering methods are required you can save
    the underlying matrix and run the clustering using other software. The plotting
    of the clustering may fail with an error if a cluster has very few members compared
    to the total number of regions. (default: None)'
  type: string
  inputBinding:
    prefix: --hclust
- id: silhouette
  doc: 'Compute the silhouette score for regions. This is only applicable if clustering
    has been performed. The silhouette score is a measure of how similar a region
    is to other regions in the same cluster as opposed to those in other clusters.
    It will be reported in the final column of the BED file with regions. The silhouette
    evaluation can be very slow when you have morethan 100 000 regions. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --silhouette
- id: plot_type
  doc: '"lines" will plot the profile line based on the average type selected. "fill"
    fills the region between zero and the profile curve. The fill in color is semi
    transparent to distinguish different profiles. "se" and "std" color the region
    between the profile and the standard error or standard deviation of the data.
    (default: lines)'
  type: string
  inputBinding:
    prefix: --plotType
- id: sort_regions
  doc: 'Whether the heatmap should present the regions sorted. The default is to sort
    in descending order based on the mean value per region. Note that "keep" and "no"
    are the same thing. (default: descend)'
  type: string
  inputBinding:
    prefix: --sortRegions
- id: sort_using
  doc: 'Indicate which method should be used for sorting. For each row the method
    is computed. For region_length, a dashed line is drawn at the end of the region
    (reference point TSS and center) or the beginning of the region (reference point
    TES) as appropriate. (default: mean)'
  type: string
  inputBinding:
    prefix: --sortUsing
- id: sort_using_samples
  doc: 'List of sample numbers (order as in matrix), that are used for sorting by
    --sortUsing, no value uses all samples, example: --sortUsingSamples 1 3 (default:
    None)'
  type: string[]
  inputBinding:
    prefix: --sortUsingSamples
- id: lines_at_tick_marks
  doc: 'Draw dashed lines from all tick marks through the heatmap. This is then similar
    to the dashed line draw at region bounds when using a reference point and --sortUsing
    region_length (default: False)'
  type: boolean
  inputBinding:
    prefix: --linesAtTickMarks
- id: cluster_using_samples
  doc: 'List of sample numbers (order as in matrix), that are used for clustering
    by --kmeans or --hclust if not given, all samples are taken into account for clustering.
    Example: --ClusterUsingSamples 1 3 (default: None)'
  type: string[]
  inputBinding:
    prefix: --clusterUsingSamples
- id: average_type_summary_plot
  doc: 'Define the type of statistic that should be plotted in the summary image above
    the heatmap. The options are: "mean", "median", "min", "max", "sum" and "std".
    (default: mean)'
  type: string
  inputBinding:
    prefix: --averageTypeSummaryPlot
- id: missing_data_color
  doc: 'If --missingDataAsZero was not set, such cases will be colored in black by
    default. Using this parameter, a different color can be set. A value between 0
    and 1 will be used for a gray scale (black is 0). For a list of possible color
    names see: http://packages.python.or g/ete2/reference/reference_svgcolors.html.
    Other colors can be specified using the #rrggbb notation. (default: black)'
  type: string
  inputBinding:
    prefix: --missingDataColor
- id: colormap
  doc: "Color map to use for the heatmap. If more than one heatmap is being plotted\
    \ the color of each heatmap can be enter individually (e.g. `--colorMap Reds Blues`).\
    \ Color maps are recycled if the number of color maps is smaller than the number\
    \ of heatmaps being plotted. Available values can be seen here: http://matplotlib.org/users/colormaps.html\
    \ The available options are: 'Accent', 'Blues', 'BrBG', 'BuGn', 'BuPu', 'CMRmap',\
    \ 'Dark2', 'GnBu', 'Greens', 'Greys', 'OrRd', 'Oranges', 'PRGn', 'Paired', 'Pastel1',\
    \ 'Pastel2', 'PiYG', 'PuBu', 'PuBuGn', 'PuOr', 'PuRd', 'Purples', 'RdBu', 'RdGy',\
    \ 'RdPu', 'RdYlBu', 'RdYlGn', 'Reds', 'Set1', 'Set2', 'Set3', 'Spectral', 'Wistia',\
    \ 'YlGn', 'YlGnBu', 'YlOrBr', 'YlOrRd', 'afmhot', 'autumn', 'binary', 'bone',\
    \ 'brg', 'bwr', 'cividis', 'cool', 'coolwarm', 'copper', 'cubehelix', 'flag',\
    \ 'gist_earth', 'gist_gray', 'gist_heat', 'gist_ncar', 'gist_rainbow', 'gist_stern',\
    \ 'gist_yarg', 'gnuplot', 'gnuplot2', 'gray', 'hot', 'hsv', 'icefire', 'inferno',\
    \ 'jet', 'magma', 'mako', 'nipy_spectral', 'ocean', 'pink', 'plasma', 'prism',\
    \ 'rainbow', 'rocket', 'seismic', 'spring', 'summer', 'tab10', 'tab20', 'tab20b',\
    \ 'tab20c', 'terrain', 'twilight', 'twilight_shifted', 'viridis', 'vlag', 'winter'\
    \ (default: ['RdYlBu'])"
  type: string[]
  inputBinding:
    prefix: --colorMap
- id: alpha
  doc: 'The alpha channel (transparency) to use for the heatmaps. The default is 1.0
    and values must be between 0 and 1. (default: 1.0)'
  type: string
  inputBinding:
    prefix: --alpha
- id: color_list
  doc: 'List of colors to use to create a colormap. For example, if `--colorList black,yellow,blue`
    is set (colors separated by comas) then a color map that starts with black, continues
    to yellow and finishes in blue is created. If this option is selected, it overrides
    the --colorMap chosen. The list of valid color names can be seen here: http://matplotlib.org/examples/color/named_colors.html
    Hex colors are valid (e.g #34a2b1). If individual colors for different heatmaps
    need to be specified they need to be separated by space as for example: `--colorList
    "white,#cccccc" "white,darkred"` As for --colorMap, the color lists are recycled
    if their number is smaller thatn the number ofplotted heatmaps. The number of
    transitions is defined by the --colorNumber option. (default: None)'
  type: string[]
  inputBinding:
    prefix: --colorList
- id: color_number
  doc: 'N.B., --colorList is required for an effect. This controls the number of transitions
    from one color to the other. If --colorNumber is the number of colors in --colorList
    then there will be no transitions between the colors. (default: 256)'
  type: string
  inputBinding:
    prefix: --colorNumber
- id: zmin
  doc: 'Minimum value for the heatmap intensities. Multiple values, separated by spaces
    can be set for each heatmap. If the number of zMin values is smaller thanthe number
    of heatmaps the values are recycled. (default: None)'
  type: string[]
  inputBinding:
    prefix: --zMin
- id: zmax
  doc: 'Maximum value for the heatmap intensities. Multiple values, separated by spaces
    can be set for each heatmap. If the number of zMax values is smaller thanthe number
    of heatmaps the values are recycled. (default: None)'
  type: string[]
  inputBinding:
    prefix: --zMax
- id: heat_map_height
  doc: 'Plot height in cm. The default for the heatmap height is 28. The minimum value
    is 3 and the maximum is 100. (default: 28)'
  type: string
  inputBinding:
    prefix: --heatmapHeight
- id: heat_map_width
  doc: 'Plot width in cm. The default value is 4 The minimum value is 1 and the maximum
    is 100. (default: 4)'
  type: string
  inputBinding:
    prefix: --heatmapWidth
- id: what_to_show
  doc: 'The default is to include a summary or profile plot on top of the heatmap
    and a heatmap colorbar. Other options are: "plot and heatmap", "heatmap only",
    "heatmap and colorbar", and the default "plot, heatmap and colorbar". (default:
    plot, heatmap and colorbar)'
  type: string
  inputBinding:
    prefix: --whatToShow
- id: box_around_heat_maps
  doc: 'By default black boxes are plot around heatmaps. This can be turned off by
    setting --boxAroundHeatmaps no (default: yes)'
  type: string
  inputBinding:
    prefix: --boxAroundHeatmaps
- id: x_axis_label
  doc: 'Description for the x-axis label. (default: gene distance (bp))'
  type: string
  inputBinding:
    prefix: --xAxisLabel
- id: start_label
  doc: '[only for scale-regions mode] Label shown in the plot for the start of the
    region. Default is TSS (transcription start site), but could be changed to anything,
    e.g. "peak start". Same for the --endLabel option. See below. (default: TSS)'
  type: string
  inputBinding:
    prefix: --startLabel
- id: end_label
  doc: '[only for scale-regions mode] Label shown in the plot for the region end.
    Default is TES (transcription end site). (default: TES)'
  type: string
  inputBinding:
    prefix: --endLabel
- id: ref_point_label
  doc: '[only for reference-point mode] Label shown in the plot for the reference-point.
    Default is the same as the reference point selected (e.g. TSS), but could be anything,
    e.g. "peak start". (default: None)'
  type: string
  inputBinding:
    prefix: --refPointLabel
- id: label_rotation
  doc: 'Rotation of the X-axis labels in degrees. The default is 0, positive values
    denote a counter-clockwise rotation. (default: 0.0)'
  type: string
  inputBinding:
    prefix: --labelRotation
- id: regions_label
  doc: 'Labels for the regions plotted in the heatmap. If more than one region is
    being plotted, a list of labels separated by spaces is required. If a label itself
    contains a space, then quotes are needed. For example, --regionsLabel label_1,
    "label 2". (default: None)'
  type: string[]
  inputBinding:
    prefix: --regionsLabel
- id: samples_label
  doc: 'Labels for the samples plotted. The default is to use the file name of the
    sample. The sample labels should be separated by spaces and quoted if a label
    itselfcontains a space E.g. --samplesLabel label-1 "label 2" (default: None)'
  type: string[]
  inputBinding:
    prefix: --samplesLabel
- id: plot_title
  doc: 'Title of the plot, to be printed on top of the generated image. Leave blank
    for no title. (default: )'
  type: string
  inputBinding:
    prefix: --plotTitle
- id: yaxis_label
  doc: 'Y-axis label for the top panel. (default: )'
  type: string
  inputBinding:
    prefix: --yAxisLabel
- id: ymin
  doc: 'Minimum value for the Y-axis. Multiple values, separated by spaces can be
    set for each profile. If the number of yMin values is smaller thanthe number of
    plots, the values are recycled. (default: None)'
  type: string[]
  inputBinding:
    prefix: --yMin
- id: ymax
  doc: 'Maximum value for the Y-axis. Multiple values, separated by spaces can be
    set for each profile. If the number of yMin values is smaller thanthe number of
    plots, the values are recycled. (default: None)'
  type: string[]
  inputBinding:
    prefix: --yMax
- id: legend_location
  doc: 'Location for the legend in the summary plot. Note that "none" does not work
    for the profiler. (default: best)'
  type: string
  inputBinding:
    prefix: --legendLocation
- id: per_group
  doc: 'The default is to plot all groups of regions by sample. Using this option
    instead plots all samples by group of regions. Note that this is only useful if
    you have multiple groups of regions. by sample rather than group. (default: False)'
  type: boolean
  inputBinding:
    prefix: --perGroup
- id: plot_file_format
  doc: 'Image format type. If given, this option overrides the image format based
    on the plotFile ending. The available options are: "png", "eps", "pdf", "plotly"
    and "svg" (default: None)'
  type: boolean
  inputBinding:
    prefix: --plotFileFormat
- id: verbose
  doc: 'If set, warning messages and additional information are given. (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- plotHeatmap
