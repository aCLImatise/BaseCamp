class: CommandLineTool
id: scHicClusterMinHash.cwl
inputs:
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
- id: in_out_filename
  doc: "File name to save the resulting clusters (default:\nclusters.txt)"
  type: File
  inputBinding:
    prefix: --outFileName
- id: in_exact_modem_in_hash
  doc: "This option increases the runtime significantly, from\na few minutes to half\
    \ an hour or longer. If set, the\nnumber of hash collisions is only used for candidate\n\
    set creation and the euclidean distance is considered\ntoo. (default: True)"
  type: boolean
  inputBinding:
    prefix: --exactModeMinHash
- id: in_save_intermediate_raw_matrix
  doc: "This option activates the save of the intermediate raw\nscHi-C matrix. (default:\
    \ None)"
  type: string
  inputBinding:
    prefix: --saveIntermediateRawMatrix
- id: in_number_of_hash_functions
  doc: "Number of to be used hash functions for minHash\n(default: 800)"
  type: long
  inputBinding:
    prefix: --numberOfHashFunctions
- id: in_number_of_nearest_neighbors
  doc: "Number of to be used computed nearest neighbors for\nthe knn graph. (default:\
    \ 100)"
  type: long
  inputBinding:
    prefix: --numberOfNearestNeighbors
- id: in_share_of_matrix_to_be_transferred
  doc: "Which share of rows shall be transferred from Python\nto C++ at once. Values\
    \ between 0 and 1, the more are\ntransferred at once, the larger the memory usage\
    \ is.\nThe less rows are transferred, the slower the\ncomputation is. (default:\
    \ 0.25)"
  type: double
  inputBinding:
    prefix: --shareOfMatrixToBeTransferred
- id: in_chromosomes
  doc: 'List of to be plotted chromosomes (default: None)'
  type: string[]
  inputBinding:
    prefix: --chromosomes
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
- id: in_var_12
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
- scHicClusterMinHash
