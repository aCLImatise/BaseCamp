class: CommandLineTool
id: old_scran_cli_filter_sce.R.cwl
inputs:
- id: in_input_sce_object
  doc: File name in which a serialized R SingleCellExperiment object where object
    matrix found
  type: File
  inputBinding:
    prefix: --input-sce-object
- id: in_exprs_values
  doc: String indicating which assay contains the count data that should be used to
    compute log-transformed expression values.
  type: string
  inputBinding:
    prefix: --exprs-values
- id: in_n_genes
  doc: Integer indicating how many genes should we sample from the input object.
  type: long
  inputBinding:
    prefix: --n-genes
- id: in_n_cells
  doc: Integer indicating how many cells should we sample from the input object.
  type: long
  inputBinding:
    prefix: --n-cells
- id: in_spikes
  doc: String or integer scalar specifying the alternative experiment containing the
    spike-in transcripts.
  type: long
  inputBinding:
    prefix: --spikes
- id: in_output_sce_object
  doc: File name in which to store serialized R object of type 'SingleCellExperiment'.
  type: File
  inputBinding:
    prefix: --output-sce-object
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- old-scran-cli-filter-sce.R
