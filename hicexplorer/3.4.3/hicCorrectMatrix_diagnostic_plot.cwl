class: CommandLineTool
id: hicCorrectMatrix_diagnostic_plot.cwl
inputs:
- id: matrix
  doc: 'Name of the Hi-C matrix to correct in .h5 format. (default: None)'
  type: string
  inputBinding:
    prefix: --matrix
- id: plot_name
  doc: 'File name to save the diagnostic plot. (default: None)'
  type: string
  inputBinding:
    prefix: --plotName
- id: chromosomes
  doc: 'List of chromosomes to be included in the iterative correction. The order
    of the given chromosomes will be then kept for the resulting corrected matrix.
    (default: None)'
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: xmax
  doc: 'Max value for the x-axis in counts per bin. (default: None)'
  type: string
  inputBinding:
    prefix: --xMax
- id: per_chr
  doc: 'Compute histogram per chromosome. For samples from cells with uneven number
    of chromosomes and/or translocations it is advisable to check the histograms per
    chromosome to find the most conservative `filterThreshold`. (default: False)'
  type: boolean
  inputBinding:
    prefix: --perchr
- id: verbose
  doc: 'Print processing status. (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- hicCorrectMatrix
- diagnostic_plot
