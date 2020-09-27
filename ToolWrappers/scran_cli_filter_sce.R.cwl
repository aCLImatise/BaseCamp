class: CommandLineTool
id: scran_cli_filter_sce.R.cwl
inputs:
- id: in_input_sce_object
  doc: Path to the input SCE object in rds format.
  type: File
  inputBinding:
    prefix: --input-sce-object
- id: in_exprs_values
  doc: String indicating which assay contains the count data that should be used to
    compute log-transformed expression values.
  type: string
  inputBinding:
    prefix: --exprs-values
- id: in_min_genes
  doc: Minimum number of genes to be expressed per cell to pass filtering.
  type: long
  inputBinding:
    prefix: --min-genes
- id: in_min_cells
  doc: Minimum number of cells for a gene to be expressed to pass filtering.
  type: long
  inputBinding:
    prefix: --min-cells
- id: in_spikes
  doc: String or integer scalar specifying the alternative experiment containing the
    spike-in transcripts. Default; "ERCC"
  type: long
  inputBinding:
    prefix: --spikes
- id: in_n_spikes
  doc: 'Integer specifying the number of genes to add as spike-ins in case there is
    are no spike-ins in the "ERCC" slot. Default: 25.'
  type: long
  inputBinding:
    prefix: --n-spikes
- id: in_log
  doc: Logical specifying wether log-transformation of CPM counts should be performed.
  type: string
  inputBinding:
    prefix: --log
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
- scran-cli-filter-sce.R
