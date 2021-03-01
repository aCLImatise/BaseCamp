class: CommandLineTool
id: scran_compute_spike_factors.R.cwl
inputs:
- id: in_input_sce_object
  doc: Path to the input SCE object in rds format.
  type: File?
  inputBinding:
    prefix: --input-sce-object
- id: in_type
  doc: 'A character vector specifying which spike-in sets to use. Default: "ERCC".'
  type: string?
  inputBinding:
    prefix: --type
- id: in_assay_type
  doc: 'Specify which assay values to use. Default: "logcounts".'
  type: string?
  inputBinding:
    prefix: --assay-type
- id: in_general_use
  doc: A logical scalar indicating whether the size factors should be stored for general
    use by all genes.
  type: long?
  inputBinding:
    prefix: --general_use
- id: in_output_sce_object
  doc: Path to the output SCE object containing the vector of size factors in sizeFactors(x).
  type: long?
  inputBinding:
    prefix: --output-sce-object
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- scran-compute-spike-factors.R
