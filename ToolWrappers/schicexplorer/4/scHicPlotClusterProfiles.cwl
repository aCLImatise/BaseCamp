class: CommandLineTool
id: scHicPlotClusterProfiles.cwl
inputs:
- id: in_schic_matrix_scool
  doc: "scHi-C matrix, -m scool scHi-C matrix\nThe single cell Hi-C interaction matrices\
    \ to\ninvestigate for QC. Needs to be in scool format\n(default: None)"
  type: string?
  inputBinding:
    prefix: --matrix
- id: in_clusters
  doc: "file, -c cluster file\nText file which contains per matrix the associated\n\
    cluster. (default: None)"
  type: File?
  inputBinding:
    prefix: --clusters
- id: in_chromosomes
  doc: 'List of to be plotted chromosomes (default: None)'
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: in_maximal_distance
  doc: 'maximal distance in bases (default: 50000000)'
  type: long?
  inputBinding:
    prefix: --maximalDistance
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
- id: in_order_by
  doc: 'Algorithm to cluster the Hi-C matrices (default: svl)'
  type: string?
  inputBinding:
    prefix: --orderBy
- id: in_out_filename
  doc: "File name to save the resulting cluster profile.\n(default: clusters_profile.png)"
  type: File?
  inputBinding:
    prefix: --outFileName
- id: in_dpi
  doc: 'The dpi of the plot. (default: 300)'
  type: long?
  inputBinding:
    prefix: --dpi
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
  doc: "File name to save the resulting cluster profile.\n(default: clusters_profile.png)"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
hints: []
cwlVersion: v1.1
baseCommand:
- scHicPlotClusterProfiles
