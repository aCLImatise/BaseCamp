class: CommandLineTool
id: scHicClusterMinHash.cwl
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
- id: out_filename
  doc: 'File name to save the resulting clusters (default: clusters.txt)'
  type: string
  inputBinding:
    prefix: --outFileName
- id: exact_modem_in_hash
  doc: 'This option increases the runtime significantly, from a few minutes to half
    an hour or longer. If set, the number of hash collisions is only used for candidate
    set creation and the euclidean distance is considered too. (default: True)'
  type: boolean
  inputBinding:
    prefix: --exactModeMinHash
- id: save_intermediate_raw_matrix
  doc: 'This option activates the save of the intermediate raw scHi-C matrix. (default:
    None)'
  type: string
  inputBinding:
    prefix: --saveIntermediateRawMatrix
- id: number_of_hash_functions
  doc: 'Number of to be used hash functions for minHash (default: 800)'
  type: string
  inputBinding:
    prefix: --numberOfHashFunctions
- id: number_of_nearest_neighbors
  doc: 'Number of to be used computed nearest neighbors for the knn graph. (default:
    100)'
  type: string
  inputBinding:
    prefix: --numberOfNearestNeighbors
- id: share_of_matrix_to_be_transferred
  doc: 'Which share of rows shall be transferred from Python to C++ at once. Values
    between 0 and 1, the more are transferred at once, the larger the memory usage
    is. The less rows are transferred, the slower the computation is. (default: 0.25)'
  type: string
  inputBinding:
    prefix: --shareOfMatrixToBeTransferred
- id: chromosomes
  doc: 'List of to be plotted chromosomes (default: None)'
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: threads
  doc: 'Number of threads. Using the python multiprocessing module. (default: 4)'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- scHicClusterMinHash
