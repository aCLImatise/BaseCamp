class: CommandLineTool
id: scHicPlotConsensusMatrices.cwl
inputs:
- id: in_schic_matrix_m
  doc: "scHi-C matrix, -m scool scHi-C matrix\nThe consensus matrix created by scHicConsensusMatrices\n\
    (default: None)"
  type: string?
  inputBinding:
    prefix: --matrix
- id: in_out_filename
  doc: "File name to save the resulting cluster profile.\n(default: consensus_matrices.png)"
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
- id: in_chromosomes
  doc: 'List of to be plotted chromosomes (default: None)'
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: in_region
  doc: "Region to be plotted for each consensus matrix. Mutual\nexclusion with the\
    \ usage of --chromosomes parameter\n(default: None)"
  type: string?
  inputBinding:
    prefix: --region
- id: in_colormap
  doc: "Color map to use for the heatmap. Available values can\nbe seen here: http://matplotlib.org/examples/color/col\n\
    ormaps_reference.html (default: RdYlBu_r)"
  type: string?
  inputBinding:
    prefix: --colorMap
- id: in_font_size
  doc: 'Fontsize in the plot for x and y axis. (default: 10)'
  type: long?
  inputBinding:
    prefix: --fontsize
- id: in_no_header
  doc: 'Do not plot a header. (default: True)'
  type: boolean?
  inputBinding:
    prefix: --no_header
- id: in_logo_nep
  doc: "Apply log1p operation to plot the matrices. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --log1p
- id: in_individual_scale
  doc: "Use an individual value range for all cluster\nconsensus matrices. If not\
    \ set, the same scale is\napplied to all. (default: True)"
  type: boolean?
  inputBinding:
    prefix: --individual_scale
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
  doc: "File name to save the resulting cluster profile.\n(default: consensus_matrices.png)"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/schicexplorer:7--py_0
cwlVersion: v1.1
baseCommand:
- scHicPlotConsensusMatrices
