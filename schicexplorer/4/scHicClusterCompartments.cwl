class: CommandLineTool
id: scHicClusterCompartments.cwl
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
- id: out_filename
  doc: 'File name to save the resulting clusters (default: clusters.txt)'
  type: string
  inputBinding:
    prefix: --outFileName
- id: cluster_method
  doc: 'Algorithm to cluster the Hi-C matrices (default: spectral)'
  type: string
  inputBinding:
    prefix: --clusterMethod
- id: chromosomes
  doc: 'List of chromosomes to be included in the correlation. (default: None)'
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: norm
  doc: 'Different obs-exp normalization as used by Homer software. (default: False)'
  type: boolean
  inputBinding:
    prefix: --norm
- id: bin_a_rization
  doc: 'Set all positive values of eigenvector to 1 and all negative ones to 0. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --binarization
- id: extra_track
  doc: 'Either a gene track or a histon mark coverage file(preferably a broad mark)
    is needed to decide if the values of the eigenvector need a sign flip or not.
    (default: None)'
  type: string
  inputBinding:
    prefix: --extraTrack
- id: hist_on_mark_type
  doc: 'set it to active or inactive. This is only necessary if a histon mark coverage
    file is given as an extraTrack. (default: active)'
  type: string
  inputBinding:
    prefix: --histonMarkType
- id: threads
  doc: 'Number of threads. Using the python multiprocessing module. (default: 4)'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- scHicClusterCompartments
