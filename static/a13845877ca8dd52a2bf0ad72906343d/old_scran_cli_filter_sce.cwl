class: CommandLineTool
id: old_scran_cli_filter_sce.R.cwl
inputs:
- id: input_sce_object
  doc: File name in which a serialized R SingleCellExperiment object where object
    matrix found
  type: string
  inputBinding:
    prefix: --input-sce-object
- id: exprs_values
  doc: String indicating which assay contains the count data that should be used to
    compute log-transformed expression values.
  type: string
  inputBinding:
    prefix: --exprs-values
- id: n_genes
  doc: Integer indicating how many genes should we sample from the input object.
  type: string
  inputBinding:
    prefix: --n-genes
- id: n_cells
  doc: Integer indicating how many cells should we sample from the input object.
  type: string
  inputBinding:
    prefix: --n-cells
- id: spikes
  doc: String or integer scalar specifying the alternative experiment containing the
    spike-in transcripts.
  type: string
  inputBinding:
    prefix: --spikes
- id: output_sce_object
  doc: File name in which to store serialized R object of type 'SingleCellExperiment'.
  type: string
  inputBinding:
    prefix: --output-sce-object
outputs: []
cwlVersion: v1.1
baseCommand:
- old-scran-cli-filter-sce.R
