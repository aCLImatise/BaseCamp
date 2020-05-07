class: CommandLineTool
id: poretools_hist.cwl
inputs:
- id: files
  doc: The input FAST5 files.
  type: File
  inputBinding:
    position: 0
- id: quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: min_length
  doc: Minimum read length to be included in histogram.
  type: long
  inputBinding:
    prefix: --min-length
- id: max_length
  doc: Maximum read length to be included in histogram.
  type: long
  inputBinding:
    prefix: --max-length
- id: num_bins
  doc: The number of histogram bins.
  type: string
  inputBinding:
    prefix: --num-bins
- id: save_as
  doc: Save the plot to a file.
  type: string
  inputBinding:
    prefix: --saveas
- id: theme_bw
  doc: Use a black and white theme.
  type: boolean
  inputBinding:
    prefix: --theme-bw
- id: watch
  doc: Monitor a directory.
  type: boolean
  inputBinding:
    prefix: --watch
outputs: []
cwlVersion: v1.1
baseCommand:
- poretools
- hist
