version 1.0

task ScHicClusterMinHash {
  input {
    String? schic_matrix_m
    Int? number_of_clusters
    String? cluster_method
    File? out_filename
    Boolean? euclidean_modem_in_hash
    Boolean? intra_chromosomal_contacts_only
    String? save_intermediate_raw_matrix
    String? create_scatterplot
    Int? dpi
    Int? number_of_hash_functions
    Int? number_of_nearest_neighbors
    Float? share_of_matrix_to_be_transferred
    Boolean? save_memory
    File? cell_coloring_type
    File? cell_coloring_batch
    Boolean? no_pc_a
    Boolean? nou_map
    Int? dimensions_pc_a
    String? colormap
    Int? font_size
    String? distance
    Int? figure_size
    Array[String] chromosomes
    Int? absolute_values
    String? latex_table
    Boolean? run_in_hyper_opt_mode
    Int? threads
    Int? u_map_n_neighbors
    Int? u_map_n_components
    String? u_map_metric
    Int? u_map_n_epochs
    Float? u_map_learning_rate
    String? u_map_in_it
    Float? u_map_min_dist
    Float? u_map_spread
    Float? u_map_set_op_mix_ratio
    Float? u_map_local_connectivity
    Float? u_map_repulsion_strength
    Int? u_map_negative_sample_rate
    Int? u_map_transform_queue_size
    String? u_map_a
    String? u_map_b
    Boolean? u_map_angular_rp_forest
    Int? u_map_target_n_neighbors
    String? u_map_target_metric
    Float? u_map_target_weight
    Boolean? u_map_force_approximation_algorithm
    Boolean? u_map_verbose
    Boolean? u_map_unique
    String sch_i_c
    String var_50
  }
  command <<<
    scHicClusterMinHash \
      ~{sch_i_c} \
      ~{var_50} \
      ~{if defined(schic_matrix_m) then ("--matrix " +  '"' + schic_matrix_m + '"') else ""} \
      ~{if defined(number_of_clusters) then ("--numberOfClusters " +  '"' + number_of_clusters + '"') else ""} \
      ~{if defined(cluster_method) then ("--clusterMethod " +  '"' + cluster_method + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if (euclidean_modem_in_hash) then "--euclideanModeMinHash" else ""} \
      ~{if (intra_chromosomal_contacts_only) then "--intraChromosomalContactsOnly" else ""} \
      ~{if defined(save_intermediate_raw_matrix) then ("--saveIntermediateRawMatrix " +  '"' + save_intermediate_raw_matrix + '"') else ""} \
      ~{if defined(create_scatterplot) then ("--createScatterPlot " +  '"' + create_scatterplot + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(number_of_hash_functions) then ("--numberOfHashFunctions " +  '"' + number_of_hash_functions + '"') else ""} \
      ~{if defined(number_of_nearest_neighbors) then ("--numberOfNearestNeighbors " +  '"' + number_of_nearest_neighbors + '"') else ""} \
      ~{if defined(share_of_matrix_to_be_transferred) then ("--shareOfMatrixToBeTransferred " +  '"' + share_of_matrix_to_be_transferred + '"') else ""} \
      ~{if (save_memory) then "--saveMemory" else ""} \
      ~{if defined(cell_coloring_type) then ("--cell_coloring_type " +  '"' + cell_coloring_type + '"') else ""} \
      ~{if defined(cell_coloring_batch) then ("--cell_coloring_batch " +  '"' + cell_coloring_batch + '"') else ""} \
      ~{if (no_pc_a) then "--noPCA" else ""} \
      ~{if (nou_map) then "--noUMAP" else ""} \
      ~{if defined(dimensions_pc_a) then ("--dimensionsPCA " +  '"' + dimensions_pc_a + '"') else ""} \
      ~{if defined(colormap) then ("--colorMap " +  '"' + colormap + '"') else ""} \
      ~{if defined(font_size) then ("--fontsize " +  '"' + font_size + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(figure_size) then ("--figuresize " +  '"' + figure_size + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(absolute_values) then ("--absoluteValues " +  '"' + absolute_values + '"') else ""} \
      ~{if defined(latex_table) then ("--latexTable " +  '"' + latex_table + '"') else ""} \
      ~{if (run_in_hyper_opt_mode) then "--runInHyperoptMode" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(u_map_n_neighbors) then ("--umap_n_neighbors " +  '"' + u_map_n_neighbors + '"') else ""} \
      ~{if defined(u_map_n_components) then ("--umap_n_components " +  '"' + u_map_n_components + '"') else ""} \
      ~{if defined(u_map_metric) then ("--umap_metric " +  '"' + u_map_metric + '"') else ""} \
      ~{if defined(u_map_n_epochs) then ("--umap_n_epochs " +  '"' + u_map_n_epochs + '"') else ""} \
      ~{if defined(u_map_learning_rate) then ("--umap_learning_rate " +  '"' + u_map_learning_rate + '"') else ""} \
      ~{if defined(u_map_in_it) then ("--umap_init " +  '"' + u_map_in_it + '"') else ""} \
      ~{if defined(u_map_min_dist) then ("--umap_min_dist " +  '"' + u_map_min_dist + '"') else ""} \
      ~{if defined(u_map_spread) then ("--umap_spread " +  '"' + u_map_spread + '"') else ""} \
      ~{if defined(u_map_set_op_mix_ratio) then ("--umap_set_op_mix_ratio " +  '"' + u_map_set_op_mix_ratio + '"') else ""} \
      ~{if defined(u_map_local_connectivity) then ("--umap_local_connectivity " +  '"' + u_map_local_connectivity + '"') else ""} \
      ~{if defined(u_map_repulsion_strength) then ("--umap_repulsion_strength " +  '"' + u_map_repulsion_strength + '"') else ""} \
      ~{if defined(u_map_negative_sample_rate) then ("--umap_negative_sample_rate " +  '"' + u_map_negative_sample_rate + '"') else ""} \
      ~{if defined(u_map_transform_queue_size) then ("--umap_transform_queue_size " +  '"' + u_map_transform_queue_size + '"') else ""} \
      ~{if defined(u_map_a) then ("--umap_a " +  '"' + u_map_a + '"') else ""} \
      ~{if defined(u_map_b) then ("--umap_b " +  '"' + u_map_b + '"') else ""} \
      ~{if (u_map_angular_rp_forest) then "--umap_angular_rp_forest" else ""} \
      ~{if defined(u_map_target_n_neighbors) then ("--umap_target_n_neighbors " +  '"' + u_map_target_n_neighbors + '"') else ""} \
      ~{if defined(u_map_target_metric) then ("--umap_target_metric " +  '"' + u_map_target_metric + '"') else ""} \
      ~{if defined(u_map_target_weight) then ("--umap_target_weight " +  '"' + u_map_target_weight + '"') else ""} \
      ~{if (u_map_force_approximation_algorithm) then "--umap_force_approximation_algorithm" else ""} \
      ~{if (u_map_verbose) then "--umap_verbose" else ""} \
      ~{if (u_map_unique) then "--umap_unique" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/schicexplorer:7--py_0"
  }
  parameter_meta {
    schic_matrix_m: "scHi-C matrix, -m scool scHi-C matrix\\nThe single cell Hi-C interaction matrices to cluster.\\nNeeds to be in scool format (default: None)"
    number_of_clusters: "Number of to be computed clusters (default: 12)"
    cluster_method: "Algorithm to cluster the Hi-C matrices (default:\\nspectral)"
    out_filename: "File name to save the resulting clusters (default:\\nclusters.txt)"
    euclidean_modem_in_hash: "This option uses the number of hash collisions is only\\nfor a candidate set selection and computes on them the\\neuclidean distance. (default: True)"
    intra_chromosomal_contacts_only: "This option loads only the intra-chromosomal contacts.\\nCan improve the cluster result if data is very noisy.\\n(default: False)"
    save_intermediate_raw_matrix: "This option activates the save of the intermediate raw\\nscHi-C matrix. (default: None)"
    create_scatterplot: "Create a scatter plot for the clustering, the x and y\\nare the first and second principal component of the\\ncomputed k-nn graph. (default: scatterPlot.eps)"
    dpi: "The dpi of the scatter plot. (default: 300)"
    number_of_hash_functions: "Number of to be used hash functions for minHash\\n(default: 4000)"
    number_of_nearest_neighbors: "Number of to be used computed nearest neighbors for\\nthe knn graph. (default: None)"
    share_of_matrix_to_be_transferred: "Which share of rows shall be transferred from Python\\nto C++ at once. If `--saveMemory` is active, value is\\ninterpreted as the share to loaded at once to memory.\\nValues between 0 and 1, the more are transferred at\\nonce, the larger the memory usage is. The less rows\\nare transferred, the slower the computation is.\\n(default: 0.25)"
    save_memory: "Load data only with one core, this method saves memory\\nbut is significantly slower. (default: False)"
    cell_coloring_type: "A two column list, first colum the cell names as\\nstored in the scool file, second column the associated\\ncoloring for the scatter plot (default: None)"
    cell_coloring_batch: "A two column list, first colum the cell names as\\nstored in the scool file, second column the associated\\ncoloring for the scatter plot (default: None)"
    no_pc_a: "Do not computes PCA on top of a k-nn. (default: False)"
    nou_map: "Do not computes UMP on top of a k-nn/PCA. (default:\\nFalse)"
    dimensions_pc_a: "The number of dimensions from the PCA matrix that\\nshould be considered for clustering. Can improve the\\ncluster result. (default: 100)"
    colormap: "Color map to use for the heatmap, supported are the\\ncategorical colormaps from holoviews:\\nhttp://holoviews.org/user_guide/Colormaps.html\\n(default: glasbey_dark)"
    font_size: "Fontsize in the plot for x and y axis. (default: 15)"
    distance: "Contact distance to consider (default: None)"
    figure_size: "y-size\\nFontsize in the plot for x and y axis. (default: (15,\\n6))"
    chromosomes: "List of to be computed chromosomes (default: None)"
    absolute_values: "Return the number of hash collisions as measure\\ninstead of 0 - 1 normalized values. (default: None)"
    latex_table: "Return the overlap statistics if --cell_coloring_type\\nis given as a latex table. (default: None)"
    run_in_hyper_opt_mode: "Compute the correct associated average of the given\\nclusters to (default: False)"
    threads: "Number of threads. Using the python multiprocessing\\nmodule. (default: 8)"
    u_map_n_neighbors: "Number of neighbors (default: 30)"
    u_map_n_components: "Number of components (default: 2)"
    u_map_metric: "Metric of umap. (default: canberra)"
    u_map_n_epochs: "Number of epochs (default: None)"
    u_map_learning_rate: "Learning rate (default: 1.0)"
    u_map_in_it: "Initialization method (default: spectral)"
    u_map_min_dist: "Minimum distance of two neighbors (default: 0.3)"
    u_map_spread: "Spread (default: 1.0)"
    u_map_set_op_mix_ratio: "set_op_mix_ratio (default: 1.0)"
    u_map_local_connectivity: "local connectivity (default: 1.0)"
    u_map_repulsion_strength: "repulsion strength (default: 1.0)"
    u_map_negative_sample_rate: "negative sample rate (default: 5)"
    u_map_transform_queue_size: "transform queue size (default: 4.0)"
    u_map_a: "a (default: None)"
    u_map_b: "b (default: None)"
    u_map_angular_rp_forest: "angular rp forest (default: False)"
    u_map_target_n_neighbors: "target number of neighbors (default: -1)"
    u_map_target_metric: "target metric (default: categorical)"
    u_map_target_weight: "target weight (default: 0.5)"
    u_map_force_approximation_algorithm: "force approximation algorithm (default: False)"
    u_map_verbose: "verbose (default: False)"
    u_map_unique: "Contact distance to consider (default: False)"
    sch_i_c: ""
    var_50: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}