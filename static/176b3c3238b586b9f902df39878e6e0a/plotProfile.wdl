version 1.0

task PlotProfile {
  input {
    String? matrix_file
    String? out_filename
    File? outfile_sorted_regions
    String? out_filename_data
    String? dpi
    String? k_means
    String? hc_lust
    Boolean? silhouette
    String? average_type
    String? plot_height
    String? plot_width
    String? plot_type
    Array[String] colors
    String? num_plots_perrow
    Array[String] cluster_using_samples
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
    plotProfile \
      ~{if defined(matrix_file) then ("--matrixFile " +  '"' + matrix_file + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(outfile_sorted_regions) then ("--outFileSortedRegions " +  '"' + outfile_sorted_regions + '"') else ""} \
      ~{if defined(out_filename_data) then ("--outFileNameData " +  '"' + out_filename_data + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(k_means) then ("--kmeans " +  '"' + k_means + '"') else ""} \
      ~{if defined(hc_lust) then ("--hclust " +  '"' + hc_lust + '"') else ""} \
      ~{true="--silhouette" false="" silhouette} \
      ~{if defined(average_type) then ("--averageType " +  '"' + average_type + '"') else ""} \
      ~{if defined(plot_height) then ("--plotHeight " +  '"' + plot_height + '"') else ""} \
      ~{if defined(plot_width) then ("--plotWidth " +  '"' + plot_width + '"') else ""} \
      ~{if defined(plot_type) then ("--plotType " +  '"' + plot_type + '"') else ""} \
      ~{if defined(colors) then ("--colors " +  '"' + colors + '"') else ""} \
      ~{if defined(num_plots_perrow) then ("--numPlotsPerRow " +  '"' + num_plots_perrow + '"') else ""} \
      ~{if defined(cluster_using_samples) then ("--clusterUsingSamples " +  '"' + cluster_using_samples + '"') else ""} \
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
    out_filename_data: "File name to save the data underlying data for the average profile, e.g. myProfile.tab. (default: None)"
    dpi: "Set the DPI to save the figure. (default: 200)"
    k_means: "Number of clusters to compute. When this option is set, the matrix is split into clusters using the k-means algorithm. Only works for data that is not grouped, otherwise only the first group will be clustered. If more specific clustering methods are required, then save the underlying matrix and run the clustering using other software. The plotting of the clustering may fail with an error if a cluster has very few members compared to the total number or regions. (default: None)"
    hc_lust: "Number of clusters to compute. When this option is set, then the matrix is split into clusters using the hierarchical clustering algorithm, using \"ward linkage\". Only works for data that is not grouped, otherwise only the first group will be clustered. --hclust could be very slow if you have >1000 regions. In those cases, you might prefer --kmeans or if more clustering methods are required you can save the underlying matrix and run the clustering using other software. The plotting of the clustering may fail with an error if a cluster has very few members compared to the total number of regions. (default: None)"
    silhouette: "Compute the silhouette score for regions. This is only applicable if clustering has been performed. The silhouette score is a measure of how similar a region is to other regions in the same cluster as opposed to those in other clusters. It will be reported in the final column of the BED file with regions. The silhouette evaluation can be very slow when you have morethan 100 000 regions. (default: False)"
    average_type: "The type of statistic that should be used for the profile. The options are: \"mean\", \"median\", \"min\", \"max\", \"sum\" and \"std\". (default: mean)"
    plot_height: "Plot height in cm. (default: 7)"
    plot_width: "Plot width in cm. The minimum value is 1 cm. (default: 11)"
    plot_type: "\"lines\" will plot the profile line based on the average type selected. \"fill\" fills the region between zero and the profile curve. The fill in color is semi transparent to distinguish different profiles. \"se\" and \"std\" color the region between the profile and the standard error or standard deviation of the data. As in the case of fill, a semi-transparent color is used. \"overlapped_lines\" plots each region's value, one on top of the other. \"heatmap\" plots a summary heatmap. (default: lines)"
    colors: "List of colors to use for the plotted lines (N.B., not applicable to '--plotType overlapped_lines'). Color names and html hex strings (e.g., #eeff22) are accepted. The color names should be space separated. For example, --colors red blue green (default: None)"
    num_plots_perrow: "Number of plots per row (default: 8)"
    cluster_using_samples: "List of sample numbers (order as in matrix), that are used for clustering by --kmeans or --hclust if not given, all samples are taken into account for clustering. Example: --ClusterUsingSamples 1 3 (default: None)"
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