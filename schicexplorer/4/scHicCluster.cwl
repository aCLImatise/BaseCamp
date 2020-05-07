class: CommandLineTool
id: scHicCluster.cwl
inputs:
- id: matrix
  doc: 'scHi-C matrix, -m scool scHi-C matrix The single cell Hi-C interaction matrices
    to cluster. Needs to be in scool format (default: None)'
  type: string
  inputBinding:
    prefix: --matrix
- id: number_of_clusters
  doc: 'Number of to be computed clusters (default: 12)'
  type: string
  inputBinding:
    prefix: --numberOfClusters
- id: cluster_method
  doc: 'Algorithm to cluster the Hi-C matrices (default: spectral)'
  type: string
  inputBinding:
    prefix: --clusterMethod
- id: chromosomes
  doc: 'List of to be plotted chromosomes (default: None)'
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: dimension_reduction_method
  doc: 'Dimension reduction methods, knn with euclidean distance, pca (default: none)'
  type: string
  inputBinding:
    prefix: --dimensionReductionMethod
- id: number_of_nearest_neighbors
  doc: 'Number of to be used computed nearest neighbors for the knn graph. Default
    is either the default value or the number of the provided cells, whatever is smaller.
    (default: 100)'
  type: string
  inputBinding:
    prefix: --numberOfNearestNeighbors
- id: out_filename
  doc: 'File name to save the resulting clusters (default: clusters.txt)'
  type: string
  inputBinding:
    prefix: --outFileName
- id: threads
  doc: 'Number of threads. Using the python multiprocessing module. (default: 4)'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- scHicCluster
