class: CommandLineTool
id: TOBIAS_PlotHeatmap.cwl
inputs:
- id: in_tfbs
  doc: '[ [ ...]]           TFBS sites per column (*required)'
  type: boolean?
  inputBinding:
    prefix: --TFBS
- id: in_signals
  doc: '[ [ ...]]        Signals in bigwig format (*required)'
  type: boolean?
  inputBinding:
    prefix: --signals
- id: in_output
  doc: 'Output filename (default: TOBIAS_heatmap.pdf)'
  type: File?
  inputBinding:
    prefix: --output
- id: in_plot_boundaries
  doc: Plot TFBS boundaries
  type: boolean?
  inputBinding:
    prefix: --plot-boundaries
- id: in_share_colorbar
  doc: "Share colorbar across all bigwigs (default: estimate colorbar\nper bigwig)"
  type: boolean?
  inputBinding:
    prefix: --share-colorbar
- id: in_tfbs_labels
  doc: '[ [ ...]]    Labels of TFBS (default: basename of --TFBS)'
  type: boolean?
  inputBinding:
    prefix: --TFBS-labels
- id: in_signal_labels
  doc: '[ [ ...]]  Labels of signals (default: basename of --signals)'
  type: boolean?
  inputBinding:
    prefix: --signal-labels
- id: in_show_columns
  doc: "[ [ ...]]   Show scores from TFBS column besides heatmap. Set to 0-based\n\
    python coordinates (for example -1 for last column) (default:\nNone)"
  type: boolean?
  inputBinding:
    prefix: --show-columns
- id: in_sort_by
  doc: "Columns in .bed to sort heatmap by (default: input .beds are\nnot sorted)"
  type: boolean?
  inputBinding:
    prefix: --sort-by
- id: in_verbosity
  doc: "Level of output logging (0: silent, 1: errors/warnings, 2:\ninfo, 3: stats,\
    \ 4: debug, 5: spam) (default: 3)\n"
  type: long?
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Output filename (default: TOBIAS_heatmap.pdf)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tobias:0.12.10--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- TOBIAS
- PlotHeatmap
