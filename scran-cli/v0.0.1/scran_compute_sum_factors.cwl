class: CommandLineTool
id: scran_compute_sum_factors.R.cwl
inputs:
- id: input_sce_object
  doc: Path to the input SCE object in rds format.
  type: string
  inputBinding:
    prefix: --input-sce-object
- id: assay_type
  doc: 'Specify which assay values to use. Default: "logcounts".'
  type: string
  inputBinding:
    prefix: --assay-type
- id: sizes
  doc: A numeric vector of pool sizes, i.e., number of cells per pool.
  type: long
  inputBinding:
    prefix: --sizes
- id: clusters
  doc: An optional factor specifying which cells belong to which cluster, for deconvolution
    within clusters. For large data sets, clustering should be performed with the
    quickCluster function before normalization.
  type: string
  inputBinding:
    prefix: --clusters
- id: subset_row
  doc: Logical, integer or character vector indicating the rows of SCE to use. If
    a character vector, it must contain the names of the rows in SCE.
  type: string
  inputBinding:
    prefix: --subset-row
- id: get_spikes
  doc: If get-spikes = FALSE, spike-in transcripts are automatically removed. If get.spikes=TRUE,
    no filtering on the spike-in transcripts will be performed.
  type: string
  inputBinding:
    prefix: --get-spikes
- id: scaling
  doc: A numeric scalar containing scaling factors to adjust the counts prior to computing
    size factors.
  type: string
  inputBinding:
    prefix: --scaling
- id: min_mean
  doc: A numeric scalar specifying the minimum (library size-adjusted) average count
    of genes to be used for normalization.
  type: long
  inputBinding:
    prefix: --min_mean
- id: output_sce_object
  doc: Path to the output SCE object containing the vector of size factors in sizeFactors(x).
  type: string
  inputBinding:
    prefix: --output-sce-object
outputs: []
cwlVersion: v1.1
baseCommand:
- scran-compute-sum-factors.R
