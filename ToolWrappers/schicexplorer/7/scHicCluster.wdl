version 1.0

task ScHicCluster {
  input {
    String? schic_matrix_m
    Int? number_of_clusters
    String? cluster_method
    Array[String] chromosomes
    Boolean? intra_chromosomal_contacts_only
    Boolean? additional_pc_a
    Int? dimensions_pc_a
    String? dimension_reduction_method
    String? create_scatterplot
    Int? number_of_nearest_neighbors
    Int? dpi
    File? out_filename
    File? cell_coloring_type
    File? cell_coloring_batch
    String? latex_table
    Int? figure_size
    String? colormap
    Int? font_size
    Int? threads
    String sch_i_c
    String var_20
  }
  command <<<
    scHicCluster \
      ~{sch_i_c} \
      ~{var_20} \
      ~{if defined(schic_matrix_m) then ("--matrix " +  '"' + schic_matrix_m + '"') else ""} \
      ~{if defined(number_of_clusters) then ("--numberOfClusters " +  '"' + number_of_clusters + '"') else ""} \
      ~{if defined(cluster_method) then ("--clusterMethod " +  '"' + cluster_method + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if (intra_chromosomal_contacts_only) then "--intraChromosomalContactsOnly" else ""} \
      ~{if (additional_pc_a) then "--additionalPCA" else ""} \
      ~{if defined(dimensions_pc_a) then ("--dimensionsPCA " +  '"' + dimensions_pc_a + '"') else ""} \
      ~{if defined(dimension_reduction_method) then ("--dimensionReductionMethod " +  '"' + dimension_reduction_method + '"') else ""} \
      ~{if defined(create_scatterplot) then ("--createScatterPlot " +  '"' + create_scatterplot + '"') else ""} \
      ~{if defined(number_of_nearest_neighbors) then ("--numberOfNearestNeighbors " +  '"' + number_of_nearest_neighbors + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(cell_coloring_type) then ("--cell_coloring_type " +  '"' + cell_coloring_type + '"') else ""} \
      ~{if defined(cell_coloring_batch) then ("--cell_coloring_batch " +  '"' + cell_coloring_batch + '"') else ""} \
      ~{if defined(latex_table) then ("--latexTable " +  '"' + latex_table + '"') else ""} \
      ~{if defined(figure_size) then ("--figuresize " +  '"' + figure_size + '"') else ""} \
      ~{if defined(colormap) then ("--colorMap " +  '"' + colormap + '"') else ""} \
      ~{if defined(font_size) then ("--fontsize " +  '"' + font_size + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/schicexplorer:7--py_0"
  }
  parameter_meta {
    schic_matrix_m: "scHi-C matrix, -m scool scHi-C matrix\\nThe single cell Hi-C interaction matrices to cluster.\\nNeeds to be in scool format (default: None)"
    number_of_clusters: "Number of to be computed clusters (default: 12)"
    cluster_method: "Algorithm to cluster the Hi-C matrices (default:\\nspectral)"
    chromosomes: "List of to be plotted chromosomes (default: None)"
    intra_chromosomal_contacts_only: "This option loads only the intra-chromosomal contacts.\\nCan improve the cluster result if data is very noisy.\\n(default: False)"
    additional_pc_a: "Computes PCA on top of a k-nn. Can improve the cluster\\nresult. (default: False)"
    dimensions_pc_a: "The number of dimensions from the PCA matrix that\\nshould be considered for clustering. Can improve the\\ncluster result. (default: 20)"
    dimension_reduction_method: "Dimension reduction methods, knn with euclidean\\ndistance, pca (default: none)"
    create_scatterplot: "Create a scatter plot for the clustering, the x and y\\nare the first and second principal component of the\\ncomputed k-nn graph. (default: None)"
    number_of_nearest_neighbors: "Number of to be used computed nearest neighbors for\\nthe knn graph. Default is either the default value or\\nthe number of the provided cells, whatever is smaller.\\n(default: 100)"
    dpi: "The dpi of the scatter plot. (default: 300)"
    out_filename: "File name to save the resulting clusters (default:\\nclusters.txt)"
    cell_coloring_type: "A two column list, first colum the cell names as\\nstored in the scool file, second column the associated\\ncoloring for the scatter plot (default: None)"
    cell_coloring_batch: "A two column list, first colum the cell names as\\nstored in the scool file, second column the associated\\ncoloring for the scatter plot (default: None)"
    latex_table: "Return the overlap statistics if --cell_coloring_type\\nis given as a latex table. (default: None)"
    figure_size: "y-size\\nFontsize in the plot for x and y axis. (default: (15,\\n6))"
    colormap: "Color map to use for the heatmap, supported are the\\ncategorical colormaps from holoviews:\\nhttp://holoviews.org/user_guide/Colormaps.html\\n(default: glasbey_dark)"
    font_size: "Fontsize in the plot for x and y axis. (default: 15)"
    threads: "Number of threads. Using the python multiprocessing\\nmodule. (default: 8)"
    sch_i_c: ""
    var_20: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}