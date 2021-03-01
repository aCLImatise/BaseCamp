class: CommandLineTool
id: amptk_heatmap.cwl
inputs:
- id: in_input
  doc: Input OTU table (Required)
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_output
  doc: Output file (Required)
  type: File?
  inputBinding:
    prefix: --output
- id: in_method
  doc: 'Type of heatmap. Default: clustermap [clustermap,heatmap]'
  type: boolean?
  inputBinding:
    prefix: --method
- id: in_delimiter
  doc: 'Delimiter of OTU table. Default: tsv [tsv,csv]'
  type: boolean?
  inputBinding:
    prefix: --delimiter
- id: in_format
  doc: 'Figure format. Default: pdf [pdf,jpg,svg,png]'
  type: boolean?
  inputBinding:
    prefix: --format
- id: in_font
  doc: 'Font set. Default: arial'
  type: boolean?
  inputBinding:
    prefix: --font
- id: in_color
  doc: 'Color Palette. Default: gist_gray_r'
  type: boolean?
  inputBinding:
    prefix: --color
- id: in_fig_size
  doc: 'Figure size. Default: 2x8'
  type: boolean?
  inputBinding:
    prefix: --figsize
- id: in_annotate
  doc: Annotate heatmap with values.
  type: boolean?
  inputBinding:
    prefix: --annotate
- id: in_distance_metric
  doc: 'Distance metric to use for clustermap. Default: braycurtis'
  type: boolean?
  inputBinding:
    prefix: --distance_metric
- id: in_cluster_columns
  doc: 'Cluster the columns (samples). Default: False [True,False]'
  type: boolean?
  inputBinding:
    prefix: --cluster_columns
- id: in_cluster_method
  doc: 'Clustering method for clustermap. Default: single [single,complete,average,weighted]'
  type: boolean?
  inputBinding:
    prefix: --cluster_method
- id: in_scaling
  doc: 'Scale the data by row. Default: None [None, z_score, standard]'
  type: boolean?
  inputBinding:
    prefix: --scaling
- id: in_yaxis_font_size
  doc: 'Y-Axis Font Size. Default: 6'
  type: boolean?
  inputBinding:
    prefix: --yaxis_fontsize
- id: in_x_axis_font_size
  doc: 'X-Axis Font Size. Default: 6'
  type: boolean?
  inputBinding:
    prefix: --xaxis_fontsize
- id: in_normalize
  doc: Normalize data based total, tsv file ID<tab>count
  type: boolean?
  inputBinding:
    prefix: --normalize
- id: in_normalize_counts
  doc: Value to normalize counts to, i.e. 100000
  type: boolean?
  inputBinding:
    prefix: --normalize_counts
- id: in_vmax
  doc: Maximum value for heatmap coloration.
  type: boolean?
  inputBinding:
    prefix: --vmax
- id: in_debug
  doc: Print pandas table on import to terminal
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file (Required)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- amptk
- heatmap
