version 1.0

task PlotHeatmap {
  input {
    String? matrix_file
    String? out_filename
    File? outfile_sorted_regions
    File? out_filename_matrix
    String? interpolation_method
    String? dpi
    String? k_means
    String? hc_lust
    Boolean? silhouette
    String? plot_type
    String? sort_regions
    String? sort_using
    Array[String] sort_using_samples
    Boolean? lines_at_tick_marks
    Array[String] cluster_using_samples
    String? average_type_summary_plot
    String? missing_data_color
    Array[String] colormap
    String? alpha
    Array[String] color_list
    String? color_number
    Array[String] zmin
    Array[String] zmax
    String? heat_map_height
    String? heat_map_width
    String? what_to_show
    String? box_around_heat_maps
    String? x_axis_label
    String? start_label
    String? end_label
    String? ref_point_label
    String? label_rotation
    Array[String] regions_label
    Array[String] samples_label
    String? plot_title
    String? yaxis_label
    Array[String] ymin
    Array[String] ymax
    String? legend_location
    Boolean? per_group
    Boolean? plot_file_format
    Boolean? verbose
  }
  command <<<
    plotHeatmap \
      ~{if defined(matrix_file) then ("--matrixFile " +  '"' + matrix_file + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(outfile_sorted_regions) then ("--outFileSortedRegions " +  '"' + outfile_sorted_regions + '"') else ""} \
      ~{if defined(out_filename_matrix) then ("--outFileNameMatrix " +  '"' + out_filename_matrix + '"') else ""} \
      ~{if defined(interpolation_method) then ("--interpolationMethod " +  '"' + interpolation_method + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(k_means) then ("--kmeans " +  '"' + k_means + '"') else ""} \
      ~{if defined(hc_lust) then ("--hclust " +  '"' + hc_lust + '"') else ""} \
      ~{true="--silhouette" false="" silhouette} \
      ~{if defined(plot_type) then ("--plotType " +  '"' + plot_type + '"') else ""} \
      ~{if defined(sort_regions) then ("--sortRegions " +  '"' + sort_regions + '"') else ""} \
      ~{if defined(sort_using) then ("--sortUsing " +  '"' + sort_using + '"') else ""} \
      ~{if defined(sort_using_samples) then ("--sortUsingSamples " +  '"' + sort_using_samples + '"') else ""} \
      ~{true="--linesAtTickMarks" false="" lines_at_tick_marks} \
      ~{if defined(cluster_using_samples) then ("--clusterUsingSamples " +  '"' + cluster_using_samples + '"') else ""} \
      ~{if defined(average_type_summary_plot) then ("--averageTypeSummaryPlot " +  '"' + average_type_summary_plot + '"') else ""} \
      ~{if defined(missing_data_color) then ("--missingDataColor " +  '"' + missing_data_color + '"') else ""} \
      ~{if defined(colormap) then ("--colorMap " +  '"' + colormap + '"') else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(color_list) then ("--colorList " +  '"' + color_list + '"') else ""} \
      ~{if defined(color_number) then ("--colorNumber " +  '"' + color_number + '"') else ""} \
      ~{if defined(zmin) then ("--zMin " +  '"' + zmin + '"') else ""} \
      ~{if defined(zmax) then ("--zMax " +  '"' + zmax + '"') else ""} \
      ~{if defined(heat_map_height) then ("--heatmapHeight " +  '"' + heat_map_height + '"') else ""} \
      ~{if defined(heat_map_width) then ("--heatmapWidth " +  '"' + heat_map_width + '"') else ""} \
      ~{if defined(what_to_show) then ("--whatToShow " +  '"' + what_to_show + '"') else ""} \
      ~{if defined(box_around_heat_maps) then ("--boxAroundHeatmaps " +  '"' + box_around_heat_maps + '"') else ""} \
      ~{if defined(x_axis_label) then ("--xAxisLabel " +  '"' + x_axis_label + '"') else ""} \
      ~{if defined(start_label) then ("--startLabel " +  '"' + start_label + '"') else ""} \
      ~{if defined(end_label) then ("--endLabel " +  '"' + end_label + '"') else ""} \
      ~{if defined(ref_point_label) then ("--refPointLabel " +  '"' + ref_point_label + '"') else ""} \
      ~{if defined(label_rotation) then ("--labelRotation " +  '"' + label_rotation + '"') else ""} \
      ~{if defined(regions_label) then ("--regionsLabel " +  '"' + regions_label + '"') else ""} \
      ~{if defined(samples_label) then ("--samplesLabel " +  '"' + samples_label + '"') else ""} \
      ~{if defined(plot_title) then ("--plotTitle " +  '"' + plot_title + '"') else ""} \
      ~{if defined(yaxis_label) then ("--yAxisLabel " +  '"' + yaxis_label + '"') else ""} \
      ~{if defined(ymin) then ("--yMin " +  '"' + ymin + '"') else ""} \
      ~{if defined(ymax) then ("--yMax " +  '"' + ymax + '"') else ""} \
      ~{if defined(legend_location) then ("--legendLocation " +  '"' + legend_location + '"') else ""} \
      ~{true="--perGroup" false="" per_group} \
      ~{true="--plotFileFormat" false="" plot_file_format} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    matrix_file: "Matrix file from the computeMatrix tool. (default: None)"
    out_filename: "File name to save the image to. The file ending will be used to determine the image format. The available options are: \"png\", \"eps\", \"pdf\" and \"svg\", e.g., MyHeatmap.png. (default: None)"
    outfile_sorted_regions: "File name into which the regions are saved after skipping zeros or min/max threshold values. The order of the regions in the file follows the sorting order selected. This is useful, for example, to generate other heatmaps while keeping the sorting of the first heatmap. Example: Heatmap1sortedRegions.bed (default: None)"
    out_filename_matrix: "If this option is given, then the matrix of values underlying the heatmap will be saved using this name, e.g. MyMatrix.tab. (default: None)"
    interpolation_method: "If the heatmap image contains a large number of columns is usually better to use an interpolation method to produce better results (see https://matplotl ib.org/examples/images_contours_and_fields/interpolati on_methods.html). Be default, plotHeatmap uses the method `nearest` if the number of columns is 1000 or less. Otherwise it uses the bilinear method. This default behaviour can be changed by using any of the following options: \"nearest\", \"bilinear\", \"bicubic\", \"gaussian\" (default: auto)"
    dpi: "Set the DPI to save the figure. (default: 200)"
    k_means: "Number of clusters to compute. When this option is set, the matrix is split into clusters using the k-means algorithm. Only works for data that is not grouped, otherwise only the first group will be clustered. If more specific clustering methods are required, then save the underlying matrix and run the clustering using other software. The plotting of the clustering may fail with an error if a cluster has very few members compared to the total number or regions. (default: None)"
    hc_lust: "Number of clusters to compute. When this option is set, then the matrix is split into clusters using the hierarchical clustering algorithm, using \"ward linkage\". Only works for data that is not grouped, otherwise only the first group will be clustered. --hclust could be very slow if you have >1000 regions. In those cases, you might prefer --kmeans or if more clustering methods are required you can save the underlying matrix and run the clustering using other software. The plotting of the clustering may fail with an error if a cluster has very few members compared to the total number of regions. (default: None)"
    silhouette: "Compute the silhouette score for regions. This is only applicable if clustering has been performed. The silhouette score is a measure of how similar a region is to other regions in the same cluster as opposed to those in other clusters. It will be reported in the final column of the BED file with regions. The silhouette evaluation can be very slow when you have morethan 100 000 regions. (default: False)"
    plot_type: "\"lines\" will plot the profile line based on the average type selected. \"fill\" fills the region between zero and the profile curve. The fill in color is semi transparent to distinguish different profiles. \"se\" and \"std\" color the region between the profile and the standard error or standard deviation of the data. (default: lines)"
    sort_regions: "Whether the heatmap should present the regions sorted. The default is to sort in descending order based on the mean value per region. Note that \"keep\" and \"no\" are the same thing. (default: descend)"
    sort_using: "Indicate which method should be used for sorting. For each row the method is computed. For region_length, a dashed line is drawn at the end of the region (reference point TSS and center) or the beginning of the region (reference point TES) as appropriate. (default: mean)"
    sort_using_samples: "List of sample numbers (order as in matrix), that are used for sorting by --sortUsing, no value uses all samples, example: --sortUsingSamples 1 3 (default: None)"
    lines_at_tick_marks: "Draw dashed lines from all tick marks through the heatmap. This is then similar to the dashed line draw at region bounds when using a reference point and --sortUsing region_length (default: False)"
    cluster_using_samples: "List of sample numbers (order as in matrix), that are used for clustering by --kmeans or --hclust if not given, all samples are taken into account for clustering. Example: --ClusterUsingSamples 1 3 (default: None)"
    average_type_summary_plot: "Define the type of statistic that should be plotted in the summary image above the heatmap. The options are: \"mean\", \"median\", \"min\", \"max\", \"sum\" and \"std\". (default: mean)"
    missing_data_color: "If --missingDataAsZero was not set, such cases will be colored in black by default. Using this parameter, a different color can be set. A value between 0 and 1 will be used for a gray scale (black is 0). For a list of possible color names see: http://packages.python.or g/ete2/reference/reference_svgcolors.html. Other colors can be specified using the #rrggbb notation. (default: black)"
    colormap: "Color map to use for the heatmap. If more than one heatmap is being plotted the color of each heatmap can be enter individually (e.g. `--colorMap Reds Blues`). Color maps are recycled if the number of color maps is smaller than the number of heatmaps being plotted. Available values can be seen here: http://matplotlib.org/users/colormaps.html The available options are: 'Accent', 'Blues', 'BrBG', 'BuGn', 'BuPu', 'CMRmap', 'Dark2', 'GnBu', 'Greens', 'Greys', 'OrRd', 'Oranges', 'PRGn', 'Paired', 'Pastel1', 'Pastel2', 'PiYG', 'PuBu', 'PuBuGn', 'PuOr', 'PuRd', 'Purples', 'RdBu', 'RdGy', 'RdPu', 'RdYlBu', 'RdYlGn', 'Reds', 'Set1', 'Set2', 'Set3', 'Spectral', 'Wistia', 'YlGn', 'YlGnBu', 'YlOrBr', 'YlOrRd', 'afmhot', 'autumn', 'binary', 'bone', 'brg', 'bwr', 'cividis', 'cool', 'coolwarm', 'copper', 'cubehelix', 'flag', 'gist_earth', 'gist_gray', 'gist_heat', 'gist_ncar', 'gist_rainbow', 'gist_stern', 'gist_yarg', 'gnuplot', 'gnuplot2', 'gray', 'hot', 'hsv', 'icefire', 'inferno', 'jet', 'magma', 'mako', 'nipy_spectral', 'ocean', 'pink', 'plasma', 'prism', 'rainbow', 'rocket', 'seismic', 'spring', 'summer', 'tab10', 'tab20', 'tab20b', 'tab20c', 'terrain', 'twilight', 'twilight_shifted', 'viridis', 'vlag', 'winter' (default: ['RdYlBu'])"
    alpha: "The alpha channel (transparency) to use for the heatmaps. The default is 1.0 and values must be between 0 and 1. (default: 1.0)"
    color_list: "List of colors to use to create a colormap. For example, if `--colorList black,yellow,blue` is set (colors separated by comas) then a color map that starts with black, continues to yellow and finishes in blue is created. If this option is selected, it overrides the --colorMap chosen. The list of valid color names can be seen here: http://matplotlib.org/examples/color/named_colors.html Hex colors are valid (e.g #34a2b1). If individual colors for different heatmaps need to be specified they need to be separated by space as for example: `--colorList \"white,#cccccc\" \"white,darkred\"` As for --colorMap, the color lists are recycled if their number is smaller thatn the number ofplotted heatmaps. The number of transitions is defined by the --colorNumber option. (default: None)"
    color_number: "N.B., --colorList is required for an effect. This controls the number of transitions from one color to the other. If --colorNumber is the number of colors in --colorList then there will be no transitions between the colors. (default: 256)"
    zmin: "Minimum value for the heatmap intensities. Multiple values, separated by spaces can be set for each heatmap. If the number of zMin values is smaller thanthe number of heatmaps the values are recycled. (default: None)"
    zmax: "Maximum value for the heatmap intensities. Multiple values, separated by spaces can be set for each heatmap. If the number of zMax values is smaller thanthe number of heatmaps the values are recycled. (default: None)"
    heat_map_height: "Plot height in cm. The default for the heatmap height is 28. The minimum value is 3 and the maximum is 100. (default: 28)"
    heat_map_width: "Plot width in cm. The default value is 4 The minimum value is 1 and the maximum is 100. (default: 4)"
    what_to_show: "The default is to include a summary or profile plot on top of the heatmap and a heatmap colorbar. Other options are: \"plot and heatmap\", \"heatmap only\", \"heatmap and colorbar\", and the default \"plot, heatmap and colorbar\". (default: plot, heatmap and colorbar)"
    box_around_heat_maps: "By default black boxes are plot around heatmaps. This can be turned off by setting --boxAroundHeatmaps no (default: yes)"
    x_axis_label: "Description for the x-axis label. (default: gene distance (bp))"
    start_label: "[only for scale-regions mode] Label shown in the plot for the start of the region. Default is TSS (transcription start site), but could be changed to anything, e.g. \"peak start\". Same for the --endLabel option. See below. (default: TSS)"
    end_label: "[only for scale-regions mode] Label shown in the plot for the region end. Default is TES (transcription end site). (default: TES)"
    ref_point_label: "[only for reference-point mode] Label shown in the plot for the reference-point. Default is the same as the reference point selected (e.g. TSS), but could be anything, e.g. \"peak start\". (default: None)"
    label_rotation: "Rotation of the X-axis labels in degrees. The default is 0, positive values denote a counter-clockwise rotation. (default: 0.0)"
    regions_label: "Labels for the regions plotted in the heatmap. If more than one region is being plotted, a list of labels separated by spaces is required. If a label itself contains a space, then quotes are needed. For example, --regionsLabel label_1, \"label 2\". (default: None)"
    samples_label: "Labels for the samples plotted. The default is to use the file name of the sample. The sample labels should be separated by spaces and quoted if a label itselfcontains a space E.g. --samplesLabel label-1 \"label 2\" (default: None)"
    plot_title: "Title of the plot, to be printed on top of the generated image. Leave blank for no title. (default: )"
    yaxis_label: "Y-axis label for the top panel. (default: )"
    ymin: "Minimum value for the Y-axis. Multiple values, separated by spaces can be set for each profile. If the number of yMin values is smaller thanthe number of plots, the values are recycled. (default: None)"
    ymax: "Maximum value for the Y-axis. Multiple values, separated by spaces can be set for each profile. If the number of yMin values is smaller thanthe number of plots, the values are recycled. (default: None)"
    legend_location: "Location for the legend in the summary plot. Note that \"none\" does not work for the profiler. (default: best)"
    per_group: "The default is to plot all groups of regions by sample. Using this option instead plots all samples by group of regions. Note that this is only useful if you have multiple groups of regions. by sample rather than group. (default: False)"
    plot_file_format: "Image format type. If given, this option overrides the image format based on the plotFile ending. The available options are: \"png\", \"eps\", \"pdf\", \"plotly\" and \"svg\" (default: None)"
    verbose: "If set, warning messages and additional information are given. (default: False)"
  }
}