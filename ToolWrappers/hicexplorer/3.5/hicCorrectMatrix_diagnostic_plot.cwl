class: CommandLineTool
id: hicCorrectMatrix_diagnostic_plot.cwl
inputs:
- id: in_matrix
  doc: "Name of the Hi-C matrix to correct in .h5 format.\n(default: None)"
  type: long?
  inputBinding:
    prefix: --matrix
- id: in_plot_name
  doc: 'File name to save the diagnostic plot. (default: None)'
  type: File?
  inputBinding:
    prefix: --plotName
- id: in_chromosomes
  doc: "List of chromosomes to be included in the iterative\ncorrection. The order\
    \ of the given chromosomes will be\nthen kept for the resulting corrected matrix.\n\
    (default: None)"
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: in_xmax
  doc: "Max value for the x-axis in counts per bin. (default:\nNone)"
  type: long?
  inputBinding:
    prefix: --xMax
- id: in_per_chr
  doc: "Compute histogram per chromosome. For samples from\ncells with uneven number\
    \ of chromosomes and/or\ntranslocations it is advisable to check the histograms\n\
    per chromosome to find the most conservative\n`filterThreshold`. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --perchr
- id: in_verbose
  doc: 'Print processing status. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hicCorrectMatrix
- diagnostic_plot
