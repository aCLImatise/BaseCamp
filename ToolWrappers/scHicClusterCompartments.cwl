class: CommandLineTool
id: scHicClusterCompartments.cwl
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
  doc: "List of chromosomes to be included in the correlation.\n(default: None)"
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: in_norm
  doc: "Different obs-exp normalization as used by Homer\nsoftware. (default: False)"
  type: boolean
  inputBinding:
    prefix: --norm
- id: in_bin_a_rization
  doc: "Set all positive values of eigenvector to 1 and all\nnegative ones to 0. (default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --binarization
- id: in_extra_track
  doc: "Either a gene track or a histon mark coverage\nfile(preferably a broad mark)\
    \ is needed to decide if\nthe values of the eigenvector need a sign flip or not.\n\
    (default: None)"
  type: File
  inputBinding:
    prefix: --extraTrack
- id: in_hist_on_mark_type
  doc: "set it to active or inactive. This is only necessary\nif a histon mark coverage\
    \ file is given as an\nextraTrack. (default: active)"
  type: File
  inputBinding:
    prefix: --histonMarkType
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
- id: in_var_11
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
- scHicClusterCompartments
