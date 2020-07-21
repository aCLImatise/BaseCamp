class: CommandLineTool
id: ../../../cs_chart.cwl
inputs:
- id: in
  doc: input files, made by 'count' subprogram
  type: string[]
  inputBinding:
    prefix: --in
- id: bins
  doc: Bins into which features are partitioned based on counts
  type: string[]
  inputBinding:
    prefix: --bins
- id: regions
  doc: 'Regions to compare (default: exon, utr5, cds, utr3)'
  type: string[]
  inputBinding:
    prefix: --regions
- id: metrics
  doc: 'Metrics to compare (default: rpkm, reads)'
  type: string[]
  inputBinding:
    prefix: --metrics
- id: quiet
  doc: Suppress all warning messages. Cannot use with '-v'.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: "Increase verbosity. With '-v', show every warning. With '-vv', turn warnings\
    \ into exceptions. Cannot use with '-q'. (Default: show each type of warning once)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: fig_format
  doc: 'File format for figure(s); Default: png)'
  type: string
  inputBinding:
    prefix: --figformat
- id: fig_size
  doc: 'N         Figure width and height, in inches. (Default: use matplotlibrc params)'
  type: string
  inputBinding:
    prefix: --figsize
- id: title
  doc: Base title for plot(s).
  type: string
  inputBinding:
    prefix: --title
- id: cmap
  doc: "Matplotlib color map from which palette will be made (e.g. 'Blues','autumn','Set1';\
    \ default: use colors from ``--stylesheet`` if given, or color cycle in matplotlibrc)"
  type: string
  inputBinding:
    prefix: --cmap
- id: dpi
  doc: 'Figure resolution (Default: 150)'
  type: string
  inputBinding:
    prefix: --dpi
- id: stylesheet
  doc: '{Solarize_Light2,_classic_test_patch,bmh,classic,dark_background,fast,fivethirtyeight,ggplot,grayscale,seaborn,seaborn-bright,seaborn-colorblind,seaborn-dark,seaborn-dark-palette,seaborn-darkgrid,seaborn-deep,seaborn-muted,seaborn-notebook,seaborn-paper,seaborn-pastel,seaborn-poster,seaborn-talk,seaborn-ticks,seaborn-white,seaborn-whitegrid,tableau-colorblind10}
    Use this matplotlib stylesheet instead of matplotlibrc params'
  type: boolean
  inputBinding:
    prefix: --stylesheet
- id: gene_list_dot_txt
  doc: Optional. File listing regions (genes or transcripts), one per line, to include
    in comparisons. If not given, all genes are included.
  type: string
  inputBinding:
    position: 0
- id: out_base
  doc: Basename for output files
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- cs
- chart
