#!/usr/bin/env cwl-runner

baseCommand:
- seurat-find-markers.R
class: CommandLineTool
cwlVersion: v1.0
id: seurat-find-markers.r
inputs:
- doc: File name in which a serialized R matrix object may be found.
  id: input_object_file
  inputBinding:
    prefix: --input-object-file
  type: string
- doc: File to be used to derive a vector of genes to test. Default is to use all
    genes.
  id: genes_use
  inputBinding:
    prefix: --genes-use
  type: string
- doc: Either loom, seurat, anndata or singlecellexperiment for the input format to
    read.
  id: input_format
  inputBinding:
    prefix: --input-format
  type: string
- doc: Limit testing to genes which show, on average, at least X-fold difference (log-scale)
    between the two groups of cells. Default is 0.25 Increasing logfc.threshold speeds
    up the function, but can miss weaker signals.
  id: log_fc_threshold
  inputBinding:
    prefix: --logfc-threshold
  type: string
- doc: Only test genes that are detected in a minimum fraction of min.pct cells in
    either of the two populations. Meant to speed up the function by not testing genes
    that are very infrequently expressed. Default is 0.1.
  id: min_pct
  inputBinding:
    prefix: --min-pct
  type: long
- doc: Only test genes that show a minimum difference in the fraction of detection
    between the two groups. Set to -Inf by default.
  id: min_diff_pct
  inputBinding:
    prefix: --min-diff-pct
  type: long
- doc: Only return positive markers (FALSE by default).
  id: only_pos
  inputBinding:
    prefix: --only-pos
  type: string
- doc: Denotes which test to use. Available options are 'wilcox', 'bimod', 'roc',
    't', 'tobit', 'poisson', 'negbinom', 'MAST', 'DESeq2'. See ?FindMarkers() for
    more info.
  id: test_use
  inputBinding:
    prefix: --test-use
  type: string
- doc: Down sample each identity class to a max number. Default is no downsampling.
    Not activated by default (set to Inf).
  id: max_cells_per_ident
  inputBinding:
    prefix: --max-cells-per-ident
  type: long
- doc: Minimum number of cells expressing the gene in at least one of the two groups,
    currently only used for poisson and negative binomial tests.
  id: min_cells_gene
  inputBinding:
    prefix: --min-cells-gene
  type: long
- doc: Minimum number of cells in one of the groups.
  id: min_cells_group
  inputBinding:
    prefix: --min-cells-group
  type: long
- doc: File name in which to store text format matrix containing a ranked list of
    putative markers, and associated statistics (p-values, ROC score, etc.).
  id: output_text_file
  inputBinding:
    prefix: --output-text-file
  type: string
