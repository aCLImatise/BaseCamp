class: CommandLineTool
id: ../../../scran_model_gene_var_with_spikes.R.cwl
inputs:
- id: input_sce_object
  doc: Path to the input SCE object in rds format
  type: string
  inputBinding:
    prefix: --input-sce-object
- id: block
  doc: A factor specifying the blocking levels for each cell in sce, for instance
    a donor covariate. If specified, variance modelling is performed separately within
    each block and statistics are combined across blocks.
  type: string
  inputBinding:
    prefix: --block
- id: size_factors
  doc: A numeric vector of cell-specific size factors. Alternatively NULL, in which
    case the size factors are extracted or computed from x.
  type: long
  inputBinding:
    prefix: --size-factors
- id: spikes
  doc: String or integer scalar specifying the alternative experiment containing the
    spike-in transcripts.
  type: string
  inputBinding:
    prefix: --spikes
- id: spike_size_factors
  doc: A numeric vector of cell-specific size factors. Alternatively NULL, in which
    case the size factors are extracted or computed from x.
  type: string
  inputBinding:
    prefix: --spike-size-factors
- id: design
  doc: A numeric matrix containing blocking terms for uninteresting factors of variation.
  type: string
  inputBinding:
    prefix: --design
- id: subset_row
  doc: Logical, integer or character vector specifying the rows for which to model
    the variance. Defaults to all genes in x.
  type: string
  inputBinding:
    prefix: --subset_row
- id: subset_fit
  doc: Logical, integer or character vector specifying the rows to be used for trend
    fitting. Defaults to subset.row.
  type: string
  inputBinding:
    prefix: --subset-fit
- id: assay_type
  doc: String or integer scalar specifying the assay containing the log-expression
    values.
  type: string
  inputBinding:
    prefix: --assay-type
- id: min_mean
  doc: A numeric scalar specifying the minimum mean to use for trend fitting.
  type: long
  inputBinding:
    prefix: --min-mean
- id: parametric
  doc: 'A logical scalar indicating whether a parametric fit should be attempted.
    f parametric=TRUE, a non-linear curve of the form: y = ax/(x^n + b) s fitted to
    the variances against the means.'
  type: string
  inputBinding:
    prefix: --parametric
- id: equi_weight
  doc: A logical scalar indicating whether statistics from each block should be given
    equal weight. Otherwise, each block is weighted according to its number of cells.
    Only used if block is specified.
  type: string
  inputBinding:
    prefix: --equiweight
- id: method
  doc: String specifying how p-values should be combined when block is specified,
    see ?combinePValues.
  type: string
  inputBinding:
    prefix: --method
- id: output_geneva_r_spikes_table
  doc: 'Path to the table where each row corresponds to a gene in sce, and contains:
    mean, total var, bio var, tech var, p.value and FDR'
  type: string
  inputBinding:
    prefix: --output-geneVarSpikes-table
outputs: []
cwlVersion: v1.1
baseCommand:
- scran-model-gene-var-with-spikes.R
