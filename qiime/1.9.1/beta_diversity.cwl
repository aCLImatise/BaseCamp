class: CommandLineTool
id: beta_diversity.py.cwl
inputs:
- id: verbose
  doc: 'Print information during execution -- useful for debugging [default: False]'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: input_path
  doc: Input OTU table in biom format or input directory containing OTU tables in
    biom format for batch processing.
  type: string
  inputBinding:
    prefix: --input_path
- id: rows
  doc: 'Compute for only these rows of the distance matrix. User should pass a list
    of sample names (e.g. "s1,s3") [default: none; full n x n matrix is generated]'
  type: string
  inputBinding:
    prefix: --rows
- id: output_dir
  doc: Output directory. One will be created if it doesn't exist.
  type: string
  inputBinding:
    prefix: --output_dir
- id: metrics
  doc: 'Beta-diversity metric(s) to use. A comma-separated list should be provided
    when multiple metrics are specified. [default: unweighted_unifrac,weighted_unifrac]'
  type: string
  inputBinding:
    prefix: --metrics
- id: show_metrics
  doc: 'Show the available beta-diversity metrics and exit. Metrics starting with
    "binary..." specifies that a metric is qualitative, and considers only the presence
    or absence of each taxon [default: False]'
  type: boolean
  inputBinding:
    prefix: --show_metrics
- id: tree_path
  doc: 'Input newick tree filepath, which is required when phylogenetic metrics are
    specified. [default: none]'
  type: string
  inputBinding:
    prefix: --tree_path
- id: full_tree
  doc: By default, tips not corresponding to OTUs in the OTU table are removed from
    the tree for diversity calculations. Pass to skip this step if you're already
    passing a minimal tree. Beware with "full_tree" metrics, as extra tips in the
    tree change the result
  type: boolean
  inputBinding:
    prefix: --full_tree
outputs: []
cwlVersion: v1.1
baseCommand:
- beta_diversity.py
