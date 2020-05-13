class: CommandLineTool
id: scanpy_cli_plot_dot.cwl
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
- id: use_raw
  doc: '/ --no-raw            Use expression values in `.raw` if present. [default:
    True]'
  type: boolean
  inputBinding:
    prefix: --use-raw
- id: var_names
  doc: '[,TEXT...]      var_names should be a valid subset of adata.var_names.'
  type: string
  inputBinding:
    prefix: --var-names
- id: groups
  doc: '[,TEXT...]         The groups for which to show the gene ranking.'
  type: string
  inputBinding:
    prefix: --groups
- id: n_genes
  doc: 'Number of genes to show.  [default: 10]'
  type: long
  inputBinding:
    prefix: --n-genes
- id: rgg
  doc: 'When set, use the rank_genes_groups_ form of the function, where gene lists
    are automatically selected.  [default: False]'
  type: boolean
  inputBinding:
    prefix: --rgg
- id: group_by
  doc: '[,TEXT...]        The key of the observation grouping to consider.'
  type: string
  inputBinding:
    prefix: --groupby
- id: log
  doc: 'Plot on logarithmic axis.  [default: False]'
  type: boolean
  inputBinding:
    prefix: --log
- id: num_categories
  doc: 'Only used if groupby observation is not categorical. This value determines
    the number of groups into which the groupby observation should be subdivided.  [default:
    7]'
  type: long
  inputBinding:
    prefix: --num-categories
- id: dendrogram
  doc: If True, a dendrogram based on the hierarchical clustering between the groupby
    categories is added. The dendrogram information is computed using scanpy.tl.dendrogram().
    If tl.dendrogram has not been called previously the function is called with default
    parameters.
  type: boolean
  inputBinding:
    prefix: --dendrogram
- id: layer
  doc: '[,TEXT...]          Name of the AnnData object layer that wants to be plotted.
    By default adata.raw.X is plotted. If use_raw=False is set, then adata.X is plotted.
    If layer is set to a valid layer name, then the layer is plotted. layer takes
    precedence over use_raw.'
  type: string
  inputBinding:
    prefix: --layer
- id: standard_scale
  doc: '[var|obs]      Whether or not to standardize that dimension between 0 and
    1, meaning for each variable or group, subtract the minimum and divide each by
    its maximum.'
  type: boolean
  inputBinding:
    prefix: --standard-scale
- id: gene_symbols
  doc: '[,TEXT...]   Column name in .var DataFrame that stores gene symbols. By default
    this is assumed to be the index column of the .var DataFrame. Setting this option
    allows alternative names to be used.'
  type: string
  inputBinding:
    prefix: --gene-symbols
- id: expression_cut_off
  doc: 'Expression cutoff that is used for binarizing the gene expression and determining
    the fraction of cells expressing given genes. A gene is expressed only if the
    expression value is greater than this threshold.  [default: 0]'
  type: double
  inputBinding:
    prefix: --expression-cutoff
- id: mean_only_expressed
  doc: 'If True, gene expression is averaged only over the cells expressing the given
    genes. [default: False]'
  type: boolean
  inputBinding:
    prefix: --mean-only-expressed
- id: color_map
  doc: '[,TEXT...]      String denoting matplotlib color map. [default: Reds]'
  type: string
  inputBinding:
    prefix: --color-map
- id: dot_max
  doc: If none, the maximum dot size is set to the maximum fraction value found (e.g.
    0.6). If given, the value should be a number between 0 and 1. All fractions larger
    than dot_max are clipped to this value.
  type: double
  inputBinding:
    prefix: --dot-max
- id: dot_min
  doc: If none, the minimum dot size is set to 0. If given, the value should be a
    number between 0 and 1. All fractions smaller than dot_min are clipped to this
    value.
  type: double
  inputBinding:
    prefix: --dot-min
- id: smallest_dot
  doc: 'If none, the smallest dot has size 0. All expression levels with dot_min are
    potted with smallest_dot dot size.  [default: 0]'
  type: double
  inputBinding:
    prefix: --smallest-dot
outputs: []
cwlVersion: v1.1
baseCommand:
- scanpy-cli
- plot
- dot
