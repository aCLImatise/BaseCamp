class: CommandLineTool
id: scHicPlotClusterProfiles.cwl
inputs:
- id: in_ticks
  doc: "Plot the cluster names as ticks. Use legend if they\noverlap. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --ticks
- id: in_legend
  doc: "Plot the cluster names as legend. Might be helpful if\nthe ticks overlap.\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --legend
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
  doc: "Maximal distance in bases to consider for ratio\ncomputation. (default: 50000000)"
  type: long?
  inputBinding:
    prefix: --maximalDistance
- id: in_distance_short_range
  doc: "Distance which should be considered as lower distance\nfor svl ordering. Values\
    \ from distances smaller this\nvalue are not considered. Default 2MB. (default:\n\
    2000000)"
  type: long?
  inputBinding:
    prefix: --distanceShortRange
- id: in_distance_long_range
  doc: "Distance which should be considered as upper distance\nfor svl ordering. Values\
    \ from distances greater this\nvalue are not considered. Default 12MB. (default:\n\
    12000000)"
  type: long?
  inputBinding:
    prefix: --distanceLongRange
- id: in_order_by
  doc: 'Algorithm to cluster the Hi-C matrices (default: svl)'
  type: string?
  inputBinding:
    prefix: --orderBy
- id: in_font_size
  doc: 'Fontsize in the plot for x and y axis. (default: 10)'
  type: long?
  inputBinding:
    prefix: --fontsize
- id: in_rotation_x
  doc: "Rotation in degrees for the labels of x axis.\n(default: 0)"
  type: long?
  inputBinding:
    prefix: --rotationX
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
- id: in_colormap
  doc: "Color map to use for the heatmap. Available values can\nbe seen here: http://matplotlib.org/examples/color/col\n\
    ormaps_reference.html (default: RdYlBu_r)"
  type: string?
  inputBinding:
    prefix: --colorMap
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
- id: in_var_16
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/schicexplorer:7--py_0
cwlVersion: v1.1
baseCommand:
- scHicPlotClusterProfiles
