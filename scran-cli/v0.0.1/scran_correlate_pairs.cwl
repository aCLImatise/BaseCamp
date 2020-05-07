class: CommandLineTool
id: scran_correlate_pairs.R.cwl
inputs:
- id: input_sce_object
  doc: Path to the input SCE object in rds format.
  type: string
  inputBinding:
    prefix: --input-sce-object
- id: block
  doc: A factor specifying the blocking levels for each cell in sce, for instance
    a donor covariate. If specified, correlations are computed separately within each
    block and statistics are combined across blocks.
  type: string
  inputBinding:
    prefix: --block
- id: design
  doc: A numeric design matrix containing uninteresting factors to be ignored.
  type: string
  inputBinding:
    prefix: --design
- id: assay_type
  doc: A character specifying which assay values to use.
  type: string
  inputBinding:
    prefix: --assay-type
- id: iters
  doc: Integer scalar specifying the number of iterations to use in correlateNull
    to build the null distribution.
  type: string
  inputBinding:
    prefix: --iters
- id: use_names
  doc: A logical scalar specifying whether the row names of x should be used in the
    output. Alternatively, a character vector containing the names to use.
  type: string
  inputBinding:
    prefix: --use-names
- id: subset_row
  doc: Logical, integer or character vector specifying the rows for which to model
    the variance. Defaults to all genes in x.
  type: string
  inputBinding:
    prefix: --subset_row
- id: get_spikes
  doc: Logical specifying wether to perform spike-ins filtering(FALSE) or not (TRUE).
  type: string
  inputBinding:
    prefix: --get-spikes
- id: use_dim_red
  doc: A string specifying whether existing values in reducedDims(x) should be used.
  type: string
  inputBinding:
    prefix: --use-dimred
- id: output_pairs_df
  doc: Path to the output dataframe with one row per gene pair (rows order by increasing
    p-values) in txt format.
  type: string
  inputBinding:
    prefix: --output-pairs-df
outputs: []
cwlVersion: v1.1
baseCommand:
- scran-correlate-pairs.R
