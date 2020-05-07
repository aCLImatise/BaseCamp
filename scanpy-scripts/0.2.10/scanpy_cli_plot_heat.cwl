class: CommandLineTool
id: scanpy_cli_plot_heat.cwl
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
- id: show_gene_labels
  doc: By default gene labels are shown when there are 50 or less genes. Otherwise
    the labels are removed.
  type: boolean
  inputBinding:
    prefix: --show-gene-labels
- id: swap_axes
  doc: 'By default, the x axis contains var_names (e.g. genes) and the y axis the
    groupby categories. By setting swap_axes then x are the groupby categories and
    y the var_names. When swapping axes var_group_positions are no longer used.  [default:
    False]'
  type: boolean
  inputBinding:
    prefix: --swap-axes
outputs: []
cwlVersion: v1.1
baseCommand:
- scanpy-cli
- plot
- heat
