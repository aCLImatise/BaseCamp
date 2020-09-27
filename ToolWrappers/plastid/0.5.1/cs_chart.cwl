class: CommandLineTool
id: cs_chart.cwl
inputs:
- id: in_in
  doc: input files, made by 'count' subprogram
  type: string[]
  inputBinding:
    prefix: --in
- id: in_bins
  doc: "Bins into which features are partitioned based on\ncounts"
  type: string[]
  inputBinding:
    prefix: --bins
- id: in_regions
  doc: 'Regions to compare (default: exon, utr5, cds, utr3)'
  type: string[]
  inputBinding:
    prefix: --regions
- id: in_metrics
  doc: 'Metrics to compare (default: rpkm, reads)'
  type: string[]
  inputBinding:
    prefix: --metrics
- id: in_quiet
  doc: Suppress all warning messages. Cannot use with '-v'.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: "Increase verbosity. With '-v', show every warning.\nWith '-vv', turn warnings\
    \ into exceptions. Cannot use\nwith '-q'. (Default: show each type of warning\
    \ once)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_fig_format
  doc: 'File format for figure(s); Default: png)'
  type: string
  inputBinding:
    prefix: --figformat
- id: in_fig_size
  doc: "N         Figure width and height, in inches. (Default: use\nmatplotlibrc\
    \ params)"
  type: string
  inputBinding:
    prefix: --figsize
- id: in_title
  doc: Base title for plot(s).
  type: string
  inputBinding:
    prefix: --title
- id: in_cmap
  doc: "Matplotlib color map from which palette will be made\n(e.g. 'Blues','autumn','Set1';\
    \ default: use colors\nfrom ``--stylesheet`` if given, or color cycle in\nmatplotlibrc)"
  type: long
  inputBinding:
    prefix: --cmap
- id: in_dpi
  doc: 'Figure resolution (Default: 150)'
  type: long
  inputBinding:
    prefix: --dpi
- id: in_stylesheet
  doc: "{Solarize_Light2,_classic_test_patch,bmh,classic,dark_background,fast,fivethirtyeight,ggplot,grayscale,seaborn,seaborn-bright,seaborn-colorblind,seaborn-dark,seaborn-dark-palette,seaborn-darkgrid,seaborn-deep,seaborn-muted,seaborn-notebook,seaborn-paper,seaborn-pastel,seaborn-poster,seaborn-talk,seaborn-ticks,seaborn-white,seaborn-whitegrid,tableau-colorblind10}\n\
    Use this matplotlib stylesheet instead of matplotlibrc\nparams\n"
  type: boolean
  inputBinding:
    prefix: --stylesheet
- id: in_gene_list_dot_txt
  doc: "Optional. File listing regions (genes or transcripts),\none per line, to include\
    \ in comparisons. If not given,\nall genes are included."
  type: string
  inputBinding:
    position: 0
- id: in_out_base
  doc: Basename for output files
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cs
- chart
