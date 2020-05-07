class: CommandLineTool
id: scran_compute_spike_factors.R.cwl
inputs:
- id: input_sce_object
  doc: Path to the input SCE object in rds format.
  type: string
  inputBinding:
    prefix: --input-sce-object
- id: type
  doc: 'A character vector specifying which spike-in sets to use. Default: "ERCC".'
  type: string
  inputBinding:
    prefix: --type
- id: assay_type
  doc: 'Specify which assay values to use. Default: "logcounts".'
  type: string
  inputBinding:
    prefix: --assay-type
- id: general_use
  doc: A logical scalar indicating whether the size factors should be stored for general
    use by all genes.
  type: string
  inputBinding:
    prefix: --general_use
- id: output_sce_object
  doc: Path to the output SCE object containing the vector of size factors in sizeFactors(x).
  type: string
  inputBinding:
    prefix: --output-sce-object
outputs: []
cwlVersion: v1.1
baseCommand:
- scran-compute-spike-factors.R
