class: CommandLineTool
id: TOBIAS_PlotHeatmap.cwl
inputs:
- id: tfbs
  doc: '[ [ ...]]           TFBS sites per column (*required)'
  type: boolean
  inputBinding:
    prefix: --TFBS
- id: signals
  doc: '[ [ ...]]        Signals in bigwig format (*required)'
  type: boolean
  inputBinding:
    prefix: --signals
- id: output
  doc: 'Output filename (default: TOBIAS_heatmap.pdf)'
  type: boolean
  inputBinding:
    prefix: --output
- id: plot_boundaries
  doc: Plot TFBS boundaries
  type: boolean
  inputBinding:
    prefix: --plot-boundaries
- id: share_colorbar
  doc: 'Share colorbar across all bigwigs (default: estimate colorbar per bigwig)'
  type: boolean
  inputBinding:
    prefix: --share-colorbar
- id: tfbs_labels
  doc: '[ [ ...]]    Labels of TFBS (default: basename of --TFBS)'
  type: boolean
  inputBinding:
    prefix: --TFBS-labels
- id: signal_labels
  doc: '[ [ ...]]  Labels of signals (default: basename of --signals)'
  type: boolean
  inputBinding:
    prefix: --signal-labels
- id: show_columns
  doc: '[ [ ...]]   Show scores from TFBS column besides heatmap. Set to 0-based python
    coordinates (for example -1 for last column) (default: None)'
  type: boolean
  inputBinding:
    prefix: --show-columns
- id: sort_by
  doc: 'Columns in .bed to sort heatmap by (default: input .beds are not sorted)'
  type: boolean
  inputBinding:
    prefix: --sort-by
- id: verbosity
  doc: 'Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats,
    4: debug, 5: spam) (default: 3)'
  type: long
  inputBinding:
    prefix: --verbosity
outputs: []
cwlVersion: v1.1
baseCommand:
- TOBIAS
- PlotHeatmap
