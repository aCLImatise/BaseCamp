class: CommandLineTool
id: scHicPlotConsensusMatrices.cwl
inputs:
- id: matrix
  doc: 'scHi-C matrix, -m scool scHi-C matrix The consensus matrix created by scHicConsensusMatrices
    (default: None)'
  type: string
  inputBinding:
    prefix: --matrix
- id: out_filename
  doc: 'File name to save the resulting cluster profile. (default: consensus_matrices.png)'
  type: string
  inputBinding:
    prefix: --outFileName
- id: dpi
  doc: 'The dpi of the plot. (default: 300)'
  type: string
  inputBinding:
    prefix: --dpi
- id: threads
  doc: 'Number of threads. Using the python multiprocessing module. (default: 4)'
  type: string
  inputBinding:
    prefix: --threads
- id: chromosomes
  doc: 'List of to be plotted chromosomes (default: None)'
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: colormap
  doc: 'Color map to use for the heatmap. Available values can be seen here: http://matplotlib.org/examples/color/col
    ormaps_reference.html (default: RdYlBu_r)'
  type: string
  inputBinding:
    prefix: --colorMap
outputs: []
cwlVersion: v1.1
baseCommand:
- scHicPlotConsensusMatrices
