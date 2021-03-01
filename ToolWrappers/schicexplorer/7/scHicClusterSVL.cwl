class: CommandLineTool
id: scHicClusterSVL.cwl
inputs:
- id: in_schic_matrix_m
  doc: "scHi-C matrix, -m scool scHi-C matrix\nThe single cell Hi-C interaction matrices\
    \ to cluster.\nNeeds to be in scool format (default: None)"
  type: string?
  inputBinding:
    prefix: --matrix
- id: in_number_of_clusters
  doc: 'Number of to be computed clusters (default: 7)'
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
- id: in_distance_short_range
  doc: "Distance which should be considered as short range.\nDefault 2MB. (default:\
    \ 2000000)"
  type: long?
  inputBinding:
    prefix: --distanceShortRange
- id: in_distance_long_range
  doc: "Distance which should be considered as short range.\nDefault 12MB. (default:\
    \ 12000000)"
  type: long?
  inputBinding:
    prefix: --distanceLongRange
- id: in_threads
  doc: "Number of threads. Using the python multiprocessing\nmodule. (default: 4)"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_sch_i_c
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_8
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
- scHicClusterSVL
