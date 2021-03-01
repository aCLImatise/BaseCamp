version 1.0

task ScHicPlotClusterProfiles {
  input {
    Boolean? ticks
    Boolean? legend
    String? schic_matrix_scool
    File? clusters
    Array[String] chromosomes
    Int? maximal_distance
    Int? distance_short_range
    Int? distance_long_range
    String? order_by
    Int? font_size
    Int? rotation_x
    File? out_filename
    Int? dpi
    String? colormap
    Int? threads
    String sch_i_c
    String var_16
  }
  command <<<
    scHicPlotClusterProfiles \
      ~{sch_i_c} \
      ~{var_16} \
      ~{if (ticks) then "--ticks" else ""} \
      ~{if (legend) then "--legend" else ""} \
      ~{if defined(schic_matrix_scool) then ("--matrix " +  '"' + schic_matrix_scool + '"') else ""} \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(maximal_distance) then ("--maximalDistance " +  '"' + maximal_distance + '"') else ""} \
      ~{if defined(distance_short_range) then ("--distanceShortRange " +  '"' + distance_short_range + '"') else ""} \
      ~{if defined(distance_long_range) then ("--distanceLongRange " +  '"' + distance_long_range + '"') else ""} \
      ~{if defined(order_by) then ("--orderBy " +  '"' + order_by + '"') else ""} \
      ~{if defined(font_size) then ("--fontsize " +  '"' + font_size + '"') else ""} \
      ~{if defined(rotation_x) then ("--rotationX " +  '"' + rotation_x + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(colormap) then ("--colorMap " +  '"' + colormap + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/schicexplorer:7--py_0"
  }
  parameter_meta {
    ticks: "Plot the cluster names as ticks. Use legend if they\\noverlap. (default: False)"
    legend: "Plot the cluster names as legend. Might be helpful if\\nthe ticks overlap. (default: False)"
    schic_matrix_scool: "scHi-C matrix, -m scool scHi-C matrix\\nThe single cell Hi-C interaction matrices to\\ninvestigate for QC. Needs to be in scool format\\n(default: None)"
    clusters: "file, -c cluster file\\nText file which contains per matrix the associated\\ncluster. (default: None)"
    chromosomes: "List of to be plotted chromosomes (default: None)"
    maximal_distance: "Maximal distance in bases to consider for ratio\\ncomputation. (default: 50000000)"
    distance_short_range: "Distance which should be considered as lower distance\\nfor svl ordering. Values from distances smaller this\\nvalue are not considered. Default 2MB. (default:\\n2000000)"
    distance_long_range: "Distance which should be considered as upper distance\\nfor svl ordering. Values from distances greater this\\nvalue are not considered. Default 12MB. (default:\\n12000000)"
    order_by: "Algorithm to cluster the Hi-C matrices (default: svl)"
    font_size: "Fontsize in the plot for x and y axis. (default: 10)"
    rotation_x: "Rotation in degrees for the labels of x axis.\\n(default: 0)"
    out_filename: "File name to save the resulting cluster profile.\\n(default: clusters_profile.png)"
    dpi: "The dpi of the plot. (default: 300)"
    colormap: "Color map to use for the heatmap. Available values can\\nbe seen here: http://matplotlib.org/examples/color/col\\normaps_reference.html (default: RdYlBu_r)"
    threads: "Number of threads. Using the python multiprocessing\\nmodule. (default: 4)"
    sch_i_c: ""
    var_16: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}