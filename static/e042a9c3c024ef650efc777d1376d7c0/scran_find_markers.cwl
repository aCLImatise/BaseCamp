class: CommandLineTool
id: scran_find_markers.R.cwl
inputs:
- id: input_sce_object
  doc: Path to the input SCE object in rds format.
  type: string
  inputBinding:
    prefix: --input-sce-object
- id: clusters
  doc: A vector of group assignments for all cells.
  type: string
  inputBinding:
    prefix: --clusters
- id: p_value_type
  doc: A character specifying how p-values are to be combined across pairwise comparisons
    for a given group/cluster. Setting pval.type="all" requires a gene to be DE between
    each cluster and every other cluster (rather than any other cluster, as is the
    default with pval.type="any").
  type: string
  inputBinding:
    prefix: --pvalue-type
- id: subset_row
  doc: Logical, integer or character vector specifying the rows for which to model
    the variance. Defaults to all genes in x.
  type: string
  inputBinding:
    prefix: --subset_row
- id: assay_type
  doc: A character specifying which assay values to use.
  type: string
  inputBinding:
    prefix: --assay-type
- id: get_spikes
  doc: Logical specifying wether to perform spike-ins filtering(FALSE) or not (TRUE).
  type: string
  inputBinding:
    prefix: --get-spikes
- id: output_markers
  doc: Path to the rds list of DataFrames with a sorted marker gene list per cluster/group.
  type: string
  inputBinding:
    prefix: --output-markers
outputs: []
cwlVersion: v1.1
baseCommand:
- scran-find-markers.R
