class: CommandLineTool
id: scanpy_cli_diffexp.cwl
inputs:
- id: input_format
  doc: '[anndata|loom] Input object format.  [default: anndata]'
  type: boolean
  inputBinding:
    prefix: --input-format
- id: output_format
  doc: '[anndata|loom|zarr] Output object format.  [default: anndata]'
  type: boolean
  inputBinding:
    prefix: --output-format
- id: zarr_chunk_size
  doc: 'Chunk size for writing output in zarr format.  [default: 1000]'
  type: long
  inputBinding:
    prefix: --zarr-chunk-size
- id: export_mtx
  doc: When specified, using it as prefix for exporting mtx files. If not empty and
    not ending with "/" or "_", a "_" will be appended.
  type: File
  inputBinding:
    prefix: --export-mtx
- id: show_obj
  doc: '[stdout|stderr]      Print output object summary info to specified stream.'
  type: boolean
  inputBinding:
    prefix: --show-obj
- id: use_raw
  doc: '/ --no-raw            Use expression values in `.raw` if present. [default:
    True]'
  type: boolean
  inputBinding:
    prefix: --use-raw
- id: group_by
  doc: The key of the observations grouping to consider.  [required]
  type: string
  inputBinding:
    prefix: --groupby
- id: groups
  doc: '[,TEXT...]         Subset of groups to which comparison shall be restricted.  [default:
    all]'
  type: string
  inputBinding:
    prefix: --groups
- id: reference
  doc: 'If "rest", compare each group to the union of the rest of the groups. If a
    group identifier, compare with respect to this group.  [default: rest]'
  type: string
  inputBinding:
    prefix: --reference
- id: n_genes
  doc: The number of genes that appear in the retured tables. By default return all
    available genes depending on the value of --use-raw.
  type: long
  inputBinding:
    prefix: --n-genes
- id: method
  doc: '[logreg|t-test|wilcoxon|t-test_overestim_var] Method of performing differential
    expression analysis.  [default: t-test_overestim_var]'
  type: boolean
  inputBinding:
    prefix: --method
- id: corr_method
  doc: '[benjamini-hochberg|bonferroni] P-value correction method. Used only for "t-test",
    "t-test_overestim_var" and "wilcoxon".  [default: benjamini-hochberg]'
  type: boolean
  inputBinding:
    prefix: --corr-method
- id: rank_by_abs
  doc: 'Rank genes by the absolute value of the score, not by the score. The returned
    scores are never the absolute values.  [default: False]'
  type: boolean
  inputBinding:
    prefix: --rankby-abs
- id: filter_params
  doc: ':VAL[,TEXT:VAL...] Parameters for filtering DE results, valid parameters are:
    "min_in_group_fraction" (float), "max_out_group_fraction" (float), "min_fold_change"
    (float).'
  type: string
  inputBinding:
    prefix: --filter-params
- id: log_reg_param
  doc: :VAL[,TEXT:VAL...] Parameters passed to `sklearn.linear_model.LogisticRegression`.
  type: string
  inputBinding:
    prefix: --logreg-param
- id: save
  doc: Tab-separated table to store results of differential expression analysis.
  type: File
  inputBinding:
    prefix: --save
outputs: []
cwlVersion: v1.1
baseCommand:
- scanpy-cli
- diffexp
