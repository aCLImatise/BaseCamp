class: CommandLineTool
id: scran_find_markers.R.cwl
inputs:
- id: in_input_sce_object
  doc: Path to the input SCE object in rds format.
  type: File
  inputBinding:
    prefix: --input-sce-object
- id: in_clusters
  doc: A vector of group assignments for all cells.
  type: string
  inputBinding:
    prefix: --clusters
- id: in_p_value_type
  doc: A character specifying how p-values are to be combined across pairwise comparisons
    for a given group/cluster. Setting pval.type="all" requires a gene to be DE between
    each cluster and every other cluster (rather than any other cluster, as is the
    default with pval.type="any").
  type: string
  inputBinding:
    prefix: --pvalue-type
- id: in_subset_row
  doc: Logical, integer or character vector specifying the rows for which to model
    the variance. Defaults to all genes in x.
  type: long
  inputBinding:
    prefix: --subset_row
- id: in_assay_type
  doc: A character specifying which assay values to use.
  type: string
  inputBinding:
    prefix: --assay-type
- id: in_get_spikes
  doc: Logical specifying wether to perform spike-ins filtering(FALSE) or not (TRUE).
  type: string
  inputBinding:
    prefix: --get-spikes
- id: in_output_markers
  doc: Path to the rds list of DataFrames with a sorted marker gene list per cluster/group.
  type: File
  inputBinding:
    prefix: --output-markers
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- scran-find-markers.R
