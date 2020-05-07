class: CommandLineTool
id: scanpy_cli_plot_embed.cwl
inputs:
- id: input_format
  doc: '[anndata|loom] Input object format.  [default: anndata]'
  type: boolean
  inputBinding:
    prefix: --input-format
- id: fig_size
  doc: ',INTEGER      Figure size.  [default: 7,7]'
  type: long
  inputBinding:
    prefix: --fig-size
- id: fig_dpi
  doc: 'Figure DPI.  [default: 80]'
  type: long
  inputBinding:
    prefix: --fig-dpi
- id: fig_font_size
  doc: 'Figure font size.  [default: 15]'
  type: long
  inputBinding:
    prefix: --fig-fontsize
- id: frame_on
  doc: '/ --frameoff          Draw a frame around the plot  [default: True]'
  type: boolean
  inputBinding:
    prefix: --frameon
- id: title
  doc: '[,TEXT...]          Provide title for the plot or panels.'
  type: string
  inputBinding:
    prefix: --title
- id: basis
  doc: 'Name of the embedding to plot, must be a key of `.obsm` without the prefix
    "X_". [default: umap]'
  type: string
  inputBinding:
    prefix: --basis
- id: color
  doc: '[,TEXT...]          Keys for annotations of observations/cells or variables/genes.'
  type: string
  inputBinding:
    prefix: --color
- id: use_raw
  doc: / --no-raw            Use `.raw` attribute for coloring with gene expression.
    If `None`, uses `.raw` if present.
  type: boolean
  inputBinding:
    prefix: --use-raw
- id: legend_loc
  doc: '[right margin|on data] Location of legend, either "on data", "right margin"
    or valid keywords for `matplotlib.legend`.  [default: right margin]'
  type: boolean
  inputBinding:
    prefix: --legend-loc
- id: legend_font_size
  doc: 'Legend font size.  [default: 15]'
  type: long
  inputBinding:
    prefix: --legend-fontsize
- id: size
  doc: Point size. Automatically computed if not specified.
  type: double
  inputBinding:
    prefix: --size
- id: gene_symbols
  doc: '[,TEXT...]   Column name in .var DataFrame that stores gene symbols. By default
    this is assumed to be the index column of the .var DataFrame. Setting this option
    allows alternative names to be used.'
  type: string
  inputBinding:
    prefix: --gene-symbols
outputs: []
cwlVersion: v1.1
baseCommand:
- scanpy-cli
- plot
- embed
