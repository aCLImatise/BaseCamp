class: CommandLineTool
id: scHicClusterMinHash.cwl
inputs:
- id: in_schic_matrix_m
  doc: "scHi-C matrix, -m scool scHi-C matrix\nThe single cell Hi-C interaction matrices\
    \ to cluster.\nNeeds to be in scool format (default: None)"
  type: string?
  inputBinding:
    prefix: --matrix
- id: in_number_of_clusters
  doc: 'Number of to be computed clusters (default: 12)'
  type: long?
  inputBinding:
    prefix: --numberOfClusters
- id: in_cluster_method
  doc: "Algorithm to cluster the Hi-C matrices (default:\nspectral)"
  type: string?
  inputBinding:
    prefix: --clusterMethod
- id: in_out_filename
  doc: "File name to save the resulting clusters (default:\nclusters.txt)"
  type: File?
  inputBinding:
    prefix: --outFileName
- id: in_euclidean_modem_in_hash
  doc: "This option uses the number of hash collisions is only\nfor a candidate set\
    \ selection and computes on them the\neuclidean distance. (default: True)"
  type: boolean?
  inputBinding:
    prefix: --euclideanModeMinHash
- id: in_intra_chromosomal_contacts_only
  doc: "This option loads only the intra-chromosomal contacts.\nCan improve the cluster\
    \ result if data is very noisy.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --intraChromosomalContactsOnly
- id: in_save_intermediate_raw_matrix
  doc: "This option activates the save of the intermediate raw\nscHi-C matrix. (default:\
    \ None)"
  type: string?
  inputBinding:
    prefix: --saveIntermediateRawMatrix
- id: in_create_scatterplot
  doc: "Create a scatter plot for the clustering, the x and y\nare the first and second\
    \ principal component of the\ncomputed k-nn graph. (default: scatterPlot.eps)"
  type: string?
  inputBinding:
    prefix: --createScatterPlot
- id: in_dpi
  doc: 'The dpi of the scatter plot. (default: 300)'
  type: long?
  inputBinding:
    prefix: --dpi
- id: in_number_of_hash_functions
  doc: "Number of to be used hash functions for minHash\n(default: 4000)"
  type: long?
  inputBinding:
    prefix: --numberOfHashFunctions
- id: in_number_of_nearest_neighbors
  doc: "Number of to be used computed nearest neighbors for\nthe knn graph. (default:\
    \ None)"
  type: long?
  inputBinding:
    prefix: --numberOfNearestNeighbors
- id: in_share_of_matrix_to_be_transferred
  doc: "Which share of rows shall be transferred from Python\nto C++ at once. If `--saveMemory`\
    \ is active, value is\ninterpreted as the share to loaded at once to memory.\n\
    Values between 0 and 1, the more are transferred at\nonce, the larger the memory\
    \ usage is. The less rows\nare transferred, the slower the computation is.\n(default:\
    \ 0.25)"
  type: double?
  inputBinding:
    prefix: --shareOfMatrixToBeTransferred
- id: in_save_memory
  doc: "Load data only with one core, this method saves memory\nbut is significantly\
    \ slower. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --saveMemory
- id: in_cell_coloring_type
  doc: "A two column list, first colum the cell names as\nstored in the scool file,\
    \ second column the associated\ncoloring for the scatter plot (default: None)"
  type: File?
  inputBinding:
    prefix: --cell_coloring_type
- id: in_cell_coloring_batch
  doc: "A two column list, first colum the cell names as\nstored in the scool file,\
    \ second column the associated\ncoloring for the scatter plot (default: None)"
  type: File?
  inputBinding:
    prefix: --cell_coloring_batch
- id: in_no_pc_a
  doc: 'Do not computes PCA on top of a k-nn. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --noPCA
- id: in_nou_map
  doc: "Do not computes UMP on top of a k-nn/PCA. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --noUMAP
- id: in_dimensions_pc_a
  doc: "The number of dimensions from the PCA matrix that\nshould be considered for\
    \ clustering. Can improve the\ncluster result. (default: 100)"
  type: long?
  inputBinding:
    prefix: --dimensionsPCA
- id: in_colormap
  doc: "Color map to use for the heatmap, supported are the\ncategorical colormaps\
    \ from holoviews:\nhttp://holoviews.org/user_guide/Colormaps.html\n(default: glasbey_dark)"
  type: string?
  inputBinding:
    prefix: --colorMap
- id: in_font_size
  doc: 'Fontsize in the plot for x and y axis. (default: 15)'
  type: long?
  inputBinding:
    prefix: --fontsize
- id: in_distance
  doc: 'Contact distance to consider (default: None)'
  type: string?
  inputBinding:
    prefix: --distance
- id: in_figure_size
  doc: "y-size\nFontsize in the plot for x and y axis. (default: (15,\n6))"
  type: long?
  inputBinding:
    prefix: --figuresize
- id: in_chromosomes
  doc: 'List of to be computed chromosomes (default: None)'
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: in_absolute_values
  doc: "Return the number of hash collisions as measure\ninstead of 0 - 1 normalized\
    \ values. (default: None)"
  type: long?
  inputBinding:
    prefix: --absoluteValues
- id: in_latex_table
  doc: "Return the overlap statistics if --cell_coloring_type\nis given as a latex\
    \ table. (default: None)"
  type: string?
  inputBinding:
    prefix: --latexTable
- id: in_run_in_hyper_opt_mode
  doc: "Compute the correct associated average of the given\nclusters to (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --runInHyperoptMode
- id: in_threads
  doc: "Number of threads. Using the python multiprocessing\nmodule. (default: 8)"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_u_map_n_neighbors
  doc: 'Number of neighbors (default: 30)'
  type: long?
  inputBinding:
    prefix: --umap_n_neighbors
- id: in_u_map_n_components
  doc: 'Number of components (default: 2)'
  type: long?
  inputBinding:
    prefix: --umap_n_components
- id: in_u_map_metric
  doc: 'Metric of umap. (default: canberra)'
  type: string?
  inputBinding:
    prefix: --umap_metric
- id: in_u_map_n_epochs
  doc: 'Number of epochs (default: None)'
  type: long?
  inputBinding:
    prefix: --umap_n_epochs
- id: in_u_map_learning_rate
  doc: 'Learning rate (default: 1.0)'
  type: double?
  inputBinding:
    prefix: --umap_learning_rate
- id: in_u_map_in_it
  doc: 'Initialization method (default: spectral)'
  type: string?
  inputBinding:
    prefix: --umap_init
- id: in_u_map_min_dist
  doc: 'Minimum distance of two neighbors (default: 0.3)'
  type: double?
  inputBinding:
    prefix: --umap_min_dist
- id: in_u_map_spread
  doc: 'Spread (default: 1.0)'
  type: double?
  inputBinding:
    prefix: --umap_spread
- id: in_u_map_set_op_mix_ratio
  doc: 'set_op_mix_ratio (default: 1.0)'
  type: double?
  inputBinding:
    prefix: --umap_set_op_mix_ratio
- id: in_u_map_local_connectivity
  doc: 'local connectivity (default: 1.0)'
  type: double?
  inputBinding:
    prefix: --umap_local_connectivity
- id: in_u_map_repulsion_strength
  doc: 'repulsion strength (default: 1.0)'
  type: double?
  inputBinding:
    prefix: --umap_repulsion_strength
- id: in_u_map_negative_sample_rate
  doc: 'negative sample rate (default: 5)'
  type: long?
  inputBinding:
    prefix: --umap_negative_sample_rate
- id: in_u_map_transform_queue_size
  doc: 'transform queue size (default: 4.0)'
  type: long?
  inputBinding:
    prefix: --umap_transform_queue_size
- id: in_u_map_a
  doc: 'a (default: None)'
  type: string?
  inputBinding:
    prefix: --umap_a
- id: in_u_map_b
  doc: 'b (default: None)'
  type: string?
  inputBinding:
    prefix: --umap_b
- id: in_u_map_angular_rp_forest
  doc: 'angular rp forest (default: False)'
  type: boolean?
  inputBinding:
    prefix: --umap_angular_rp_forest
- id: in_u_map_target_n_neighbors
  doc: 'target number of neighbors (default: -1)'
  type: long?
  inputBinding:
    prefix: --umap_target_n_neighbors
- id: in_u_map_target_metric
  doc: 'target metric (default: categorical)'
  type: string?
  inputBinding:
    prefix: --umap_target_metric
- id: in_u_map_target_weight
  doc: 'target weight (default: 0.5)'
  type: double?
  inputBinding:
    prefix: --umap_target_weight
- id: in_u_map_force_approximation_algorithm
  doc: 'force approximation algorithm (default: False)'
  type: boolean?
  inputBinding:
    prefix: --umap_force_approximation_algorithm
- id: in_u_map_verbose
  doc: 'verbose (default: False)'
  type: boolean?
  inputBinding:
    prefix: --umap_verbose
- id: in_u_map_unique
  doc: 'Contact distance to consider (default: False)'
  type: boolean?
  inputBinding:
    prefix: --umap_unique
- id: in_sch_i_c
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_50
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: "File name to save the resulting clusters (default:\nclusters.txt)"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/schicexplorer:7--py_0
cwlVersion: v1.1
baseCommand:
- scHicClusterMinHash
