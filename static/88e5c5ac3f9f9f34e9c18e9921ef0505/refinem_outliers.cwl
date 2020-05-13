class: CommandLineTool
id: refinem_outliers.cwl
inputs:
- id: scaffold_stats_file
  doc: file with statistics for each scaffold
  type: string
  inputBinding:
    position: 0
- id: output_dir
  doc: output directory
  type: string
  inputBinding:
    position: 1
- id: gc_perc
  doc: 'percentile for identify scaffolds with divergent GC content (default: 98)'
  type: long
  inputBinding:
    prefix: --gc_perc
- id: td_perc
  doc: 'percentile for identify scaffolds with divergent tetranucleotide signatures
    (default: 98)'
  type: long
  inputBinding:
    prefix: --td_perc
- id: cov_corr
  doc: 'correlation for identifying scaffolds with divergent coverage profiles (default:
    -2)'
  type: string
  inputBinding:
    prefix: --cov_corr
- id: cov_perc
  doc: 'mean absolute percent error for identifying scaffolds with divergent coverage
    profiles (default: 50)'
  type: long
  inputBinding:
    prefix: --cov_perc
- id: report_type
  doc: "report sequences that are outliers in 'all' or 'any' reference distribution\
    \ (default: any)"
  type: string
  inputBinding:
    prefix: --report_type
- id: create_plots
  doc: create exploratory plots (currently unstable due to mpld3 limitations)
  type: boolean
  inputBinding:
    prefix: --create_plots
- id: individual_plots
  doc: create individual plots for each statistic
  type: boolean
  inputBinding:
    prefix: --individual_plots
- id: image_type
  doc: 'desired image type (default: png)'
  type: string
  inputBinding:
    prefix: --image_type
- id: point_size
  doc: 'desired size of points in scatterplot (default: 36)'
  type: string
  inputBinding:
    prefix: --point_size
- id: highlight_file
  doc: file indicating scaffolds to highlight
  type: string
  inputBinding:
    prefix: --highlight_file
- id: links_file
  doc: file indicating pairs of scaffolds to join by a line
  type: string
  inputBinding:
    prefix: --links_file
- id: dpi
  doc: 'desired DPI of output image (default: 96)'
  type: string
  inputBinding:
    prefix: --dpi
- id: label_font_size
  doc: 'desired font size for labels (default: 12)'
  type: string
  inputBinding:
    prefix: --label_font_size
- id: tick_font_size
  doc: 'desired font size for tick markers (default: 10)'
  type: string
  inputBinding:
    prefix: --tick_font_size
- id: width
  doc: 'width of output image (default: 12)'
  type: string
  inputBinding:
    prefix: --width
- id: height
  doc: 'height of output image (default: 6)'
  type: string
  inputBinding:
    prefix: --height
- id: silent
  doc: suppress output of logger
  type: boolean
  inputBinding:
    prefix: --silent
outputs: []
cwlVersion: v1.1
baseCommand:
- refinem
- outliers
