class: CommandLineTool
id: scran_correlate_pairs.R.cwl
inputs:
- id: in_input_sce_object
  doc: Path to the input SCE object in rds format.
  type: File?
  inputBinding:
    prefix: --input-sce-object
- id: in_block
  doc: A factor specifying the blocking levels for each cell in sce, for instance
    a donor covariate. If specified, correlations are computed separately within each
    block and statistics are combined across blocks.
  type: string?
  inputBinding:
    prefix: --block
- id: in_design
  doc: A numeric design matrix containing uninteresting factors to be ignored.
  type: string?
  inputBinding:
    prefix: --design
- id: in_assay_type
  doc: A character specifying which assay values to use.
  type: string?
  inputBinding:
    prefix: --assay-type
- id: in_iters
  doc: Integer scalar specifying the number of iterations to use in correlateNull
    to build the null distribution.
  type: long?
  inputBinding:
    prefix: --iters
- id: in_use_names
  doc: A logical scalar specifying whether the row names of x should be used in the
    output. Alternatively, a character vector containing the names to use.
  type: string?
  inputBinding:
    prefix: --use-names
- id: in_subset_row
  doc: Logical, integer or character vector specifying the rows for which to model
    the variance. Defaults to all genes in x.
  type: long?
  inputBinding:
    prefix: --subset_row
- id: in_get_spikes
  doc: Logical specifying wether to perform spike-ins filtering(FALSE) or not (TRUE).
  type: string?
  inputBinding:
    prefix: --get-spikes
- id: in_use_dim_red
  doc: A string specifying whether existing values in reducedDims(x) should be used.
  type: string?
  inputBinding:
    prefix: --use-dimred
- id: in_output_pairs_df
  doc: Path to the output dataframe with one row per gene pair (rows order by increasing
    p-values) in txt format.
  type: File?
  inputBinding:
    prefix: --output-pairs-df
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_pairs_df
  doc: Path to the output dataframe with one row per gene pair (rows order by increasing
    p-values) in txt format.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_pairs_df)
hints: []
cwlVersion: v1.1
baseCommand:
- scran-correlate-pairs.R
