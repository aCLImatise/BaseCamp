class: CommandLineTool
id: poretools_hist.cwl
inputs:
- id: in_quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_min_length
  doc: Minimum read length to be included in histogram.
  type: long
  inputBinding:
    prefix: --min-length
- id: in_max_length
  doc: Maximum read length to be included in histogram.
  type: long
  inputBinding:
    prefix: --max-length
- id: in_num_bins
  doc: The number of histogram bins.
  type: long
  inputBinding:
    prefix: --num-bins
- id: in_save_as
  doc: Save the plot to a file.
  type: File
  inputBinding:
    prefix: --saveas
- id: in_theme_bw
  doc: Use a black and white theme.
  type: boolean
  inputBinding:
    prefix: --theme-bw
- id: in_watch
  doc: Monitor a directory.
  type: boolean
  inputBinding:
    prefix: --watch
- id: in_files
  doc: The input FAST5 files.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- poretools
- hist
