class: CommandLineTool
id: chisel_plotting.cwl
inputs:
- id: in_clone_map
  doc: "Clone map (default: not used, the cells will be\nclustered for plotting purposes)"
  type: string?
  inputBinding:
    prefix: --clonemap
- id: in_fig_format
  doc: "Format of output figures (default: png, the only other\noption is pdf)"
  type: string?
  inputBinding:
    prefix: --figformat
- id: in_sample
  doc: 'Number of cells to sample (default: 20)'
  type: long?
  inputBinding:
    prefix: --sample
- id: in_exclude_noisy
  doc: 'Exclude noisy cells from plots (default: False)'
  type: boolean?
  inputBinding:
    prefix: --excludenoisy
- id: in_grid_size
  doc: "Grid dimenstions specified as comma-separated numbers\n(default: 12,6)"
  type: long?
  inputBinding:
    prefix: --gridsize
- id: in_plot_size
  doc: "Plot dimenstions for RDR-BAF plots, specified as\ncomma-separated numbers\
    \ (default: 5,1.5)"
  type: long?
  inputBinding:
    prefix: --plotsize
- id: in_clus_size
  doc: "Grid dimenstions for clustered plots, specified as\ncomma-separated numbers\
    \ (default: 5,3)"
  type: long?
  inputBinding:
    prefix: --clussize
- id: in_xmax
  doc: 'Maximum x-axis value (default: None)'
  type: string?
  inputBinding:
    prefix: --xmax
- id: in_xmin
  doc: 'Minimum x-axis value (default: None)'
  type: string?
  inputBinding:
    prefix: --xmin
- id: in_ymax
  doc: 'Maximum x-axis value (default: None)'
  type: string?
  inputBinding:
    prefix: --ymax
- id: in_ymin
  doc: 'Minimum x-axis value (default: None)'
  type: string?
  inputBinding:
    prefix: --ymin
- id: in_input
  doc: "Input file with inferred copy numbers (default:\ncalls/calls.tsv)"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chisel:0.0.5--py_0
cwlVersion: v1.1
baseCommand:
- chisel_plotting
