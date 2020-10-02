class: CommandLineTool
id: refinem_outliers.cwl
inputs:
- id: in_gc_perc
  doc: "percentile for identify scaffolds with divergent GC\ncontent (default: 98)"
  type: long
  inputBinding:
    prefix: --gc_perc
- id: in_td_perc
  doc: "percentile for identify scaffolds with divergent\ntetranucleotide signatures\
    \ (default: 98)"
  type: long
  inputBinding:
    prefix: --td_perc
- id: in_cov_corr
  doc: "correlation for identifying scaffolds with divergent\ncoverage profiles (default:\
    \ -2)"
  type: long
  inputBinding:
    prefix: --cov_corr
- id: in_cov_perc
  doc: "mean absolute percent error for identifying scaffolds\nwith divergent coverage\
    \ profiles (default: 50)"
  type: long
  inputBinding:
    prefix: --cov_perc
- id: in_report_type
  doc: "report sequences that are outliers in 'all' or 'any'\nreference distribution\
    \ (default: any)"
  type: string
  inputBinding:
    prefix: --report_type
- id: in_create_plots
  doc: "create exploratory plots (currently unstable due to\nmpld3 limitations)"
  type: boolean
  inputBinding:
    prefix: --create_plots
- id: in_individual_plots
  doc: create individual plots for each statistic
  type: boolean
  inputBinding:
    prefix: --individual_plots
- id: in_image_type
  doc: 'desired image type (default: png)'
  type: string
  inputBinding:
    prefix: --image_type
- id: in_point_size
  doc: 'desired size of points in scatterplot (default: 36)'
  type: long
  inputBinding:
    prefix: --point_size
- id: in_highlight_file
  doc: file indicating scaffolds to highlight
  type: File
  inputBinding:
    prefix: --highlight_file
- id: in_links_file
  doc: file indicating pairs of scaffolds to join by a line
  type: File
  inputBinding:
    prefix: --links_file
- id: in_dpi
  doc: 'desired DPI of output image (default: 96)'
  type: long
  inputBinding:
    prefix: --dpi
- id: in_label_font_size
  doc: 'desired font size for labels (default: 12)'
  type: long
  inputBinding:
    prefix: --label_font_size
- id: in_tick_font_size
  doc: 'desired font size for tick markers (default: 10)'
  type: long
  inputBinding:
    prefix: --tick_font_size
- id: in_width
  doc: 'width of output image (default: 12)'
  type: long
  inputBinding:
    prefix: --width
- id: in_height
  doc: 'height of output image (default: 6)'
  type: long
  inputBinding:
    prefix: --height
- id: in_silent
  doc: suppress output of logger
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_scaffold_stats_file
  doc: file with statistics for each scaffold
  type: string
  inputBinding:
    position: 0
- id: in_output_dir
  doc: output directory
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- refinem
- outliers
