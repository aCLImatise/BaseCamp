class: CommandLineTool
id: scHicCluster.cwl
inputs:
- id: in_out_filename
  doc: "File name to save the resulting clusters (default:\nclusters.txt)"
  type: File
  inputBinding:
    prefix: --outFileName
- id: in_schic_matrix_m
  doc: "scHi-C matrix, -m scool scHi-C matrix\nThe single cell Hi-C interaction matrices\
    \ to cluster.\nNeeds to be in scool format (default: None)"
  type: string
  inputBinding:
    prefix: --matrix
- id: in_number_of_clusters
  doc: 'Number of to be computed clusters (default: 12)'
  type: long
  inputBinding:
    prefix: --numberOfClusters
- id: in_cluster_method
  doc: "Algorithm to cluster the Hi-C matrices (default:\nspectral)"
  type: string
  inputBinding:
    prefix: --clusterMethod
- id: in_chromosomes
  doc: 'List of to be plotted chromosomes (default: None)'
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: in_dimension_reduction_method
  doc: "Dimension reduction methods, knn with euclidean\ndistance, pca (default: none)"
  type: string
  inputBinding:
    prefix: --dimensionReductionMethod
- id: in_number_of_nearest_neighbors
  doc: "Number of to be used computed nearest neighbors for\nthe knn graph. Default\
    \ is either the default value or\nthe number of the provided cells, whatever is\
    \ smaller.\n(default: 100)"
  type: long
  inputBinding:
    prefix: --numberOfNearestNeighbors
- id: in_threads
  doc: "Number of threads. Using the python multiprocessing\nmodule. (default: 4)"
  type: long
  inputBinding:
    prefix: --threads
- id: in_sch_i_c
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_9
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
  type: File
  outputBinding:
    glob: $(inputs.in_out_filename)
cwlVersion: v1.1
baseCommand:
- scHicCluster
