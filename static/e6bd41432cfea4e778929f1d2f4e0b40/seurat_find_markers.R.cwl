class: CommandLineTool
id: seurat_find_markers.R.cwl
inputs:
- id: in_input_object_file
  doc: File name in which a serialized R matrix object may be found.
  type: File?
  inputBinding:
    prefix: --input-object-file
- id: in_genes_use
  doc: File to be used to derive a vector of genes to test. Default is to use all
    genes.
  type: File?
  inputBinding:
    prefix: --genes-use
- id: in_input_format
  doc: Either loom, seurat, anndata or singlecellexperiment for the input format to
    read.
  type: string?
  inputBinding:
    prefix: --input-format
- id: in_log_fc_threshold
  doc: Limit testing to genes which show, on average, at least X-fold difference (log-scale)
    between the two groups of cells. Default is 0.25 Increasing logfc.threshold speeds
    up the function, but can miss weaker signals.
  type: double?
  inputBinding:
    prefix: --logfc-threshold
- id: in_min_pct
  doc: Only test genes that are detected in a minimum fraction of min.pct cells in
    either of the two populations. Meant to speed up the function by not testing genes
    that are very infrequently expressed. Default is 0.1.
  type: long?
  inputBinding:
    prefix: --min-pct
- id: in_min_diff_pct
  doc: Only test genes that show a minimum difference in the fraction of detection
    between the two groups. Set to -Inf by default.
  type: long?
  inputBinding:
    prefix: --min-diff-pct
- id: in_only_pos
  doc: Only return positive markers (FALSE by default).
  type: string?
  inputBinding:
    prefix: --only-pos
- id: in_test_use
  doc: Denotes which test to use. Available options are 'wilcox', 'bimod', 'roc',
    't', 'tobit', 'poisson', 'negbinom', 'MAST', 'DESeq2'. See ?FindMarkers() for
    more info.
  type: long?
  inputBinding:
    prefix: --test-use
- id: in_max_cells_per_ident
  doc: Down sample each identity class to a max number. Default is no downsampling.
    Not activated by default (set to Inf).
  type: long?
  inputBinding:
    prefix: --max-cells-per-ident
- id: in_min_cells_gene
  doc: Minimum number of cells expressing the gene in at least one of the two groups,
    currently only used for poisson and negative binomial tests.
  type: long?
  inputBinding:
    prefix: --min-cells-gene
- id: in_min_cells_group
  doc: Minimum number of cells in one of the groups.
  type: long?
  inputBinding:
    prefix: --min-cells-group
- id: in_output_text_file
  doc: File name in which to store text format matrix containing a ranked list of
    putative markers, and associated statistics (p-values, ROC score, etc.).
  type: File?
  inputBinding:
    prefix: --output-text-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_text_file
  doc: File name in which to store text format matrix containing a ranked list of
    putative markers, and associated statistics (p-values, ROC score, etc.).
  type: File?
  outputBinding:
    glob: $(inputs.in_output_text_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seurat-scripts:0.0.9--0
cwlVersion: v1.1
baseCommand:
- seurat-find-markers.R
