class: CommandLineTool
id: scHicCluster.cwl
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
- id: in_chromosomes
  doc: 'List of to be plotted chromosomes (default: None)'
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: in_intra_chromosomal_contacts_only
  doc: "This option loads only the intra-chromosomal contacts.\nCan improve the cluster\
    \ result if data is very noisy.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --intraChromosomalContactsOnly
- id: in_additional_pc_a
  doc: "Computes PCA on top of a k-nn. Can improve the cluster\nresult. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --additionalPCA
- id: in_dimensions_pc_a
  doc: "The number of dimensions from the PCA matrix that\nshould be considered for\
    \ clustering. Can improve the\ncluster result. (default: 20)"
  type: long?
  inputBinding:
    prefix: --dimensionsPCA
- id: in_dimension_reduction_method
  doc: "Dimension reduction methods, knn with euclidean\ndistance, pca (default: none)"
  type: string?
  inputBinding:
    prefix: --dimensionReductionMethod
- id: in_create_scatterplot
  doc: "Create a scatter plot for the clustering, the x and y\nare the first and second\
    \ principal component of the\ncomputed k-nn graph. (default: None)"
  type: string?
  inputBinding:
    prefix: --createScatterPlot
- id: in_number_of_nearest_neighbors
  doc: "Number of to be used computed nearest neighbors for\nthe knn graph. Default\
    \ is either the default value or\nthe number of the provided cells, whatever is\
    \ smaller.\n(default: 100)"
  type: long?
  inputBinding:
    prefix: --numberOfNearestNeighbors
- id: in_dpi
  doc: 'The dpi of the scatter plot. (default: 300)'
  type: long?
  inputBinding:
    prefix: --dpi
- id: in_out_filename
  doc: "File name to save the resulting clusters (default:\nclusters.txt)"
  type: File?
  inputBinding:
    prefix: --outFileName
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
- id: in_latex_table
  doc: "Return the overlap statistics if --cell_coloring_type\nis given as a latex\
    \ table. (default: None)"
  type: string?
  inputBinding:
    prefix: --latexTable
- id: in_figure_size
  doc: "y-size\nFontsize in the plot for x and y axis. (default: (15,\n6))"
  type: long?
  inputBinding:
    prefix: --figuresize
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
- id: in_threads
  doc: "Number of threads. Using the python multiprocessing\nmodule. (default: 8)"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_sch_i_c
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_20
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
- scHicCluster
