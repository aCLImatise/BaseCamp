class: CommandLineTool
id: scHicClusterSVL.cwl
inputs:
- id: matrix
  doc: 'scHi-C matrix, -m scool scHi-C matrix The single cell Hi-C interaction matrices
    to cluster. Needs to be in scool format (default: None)'
  type: string
  inputBinding:
    prefix: --matrix
- id: number_of_clusters
  doc: 'Number of to be computed clusters (default: 7)'
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
- id: distance_short_range
  doc: 'Distance which should be considered as short range. Default 2MB. (default:
    2000000)'
  type: string
  inputBinding:
    prefix: --distanceShortRange
- id: distance_long_range
  doc: 'Distance which should be considered as short range. Default 12MB. (default:
    12000000)'
  type: string
  inputBinding:
    prefix: --distanceLongRange
- id: threads
  doc: 'Number of threads. Using the python multiprocessing module. (default: 4)'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- scHicClusterSVL
