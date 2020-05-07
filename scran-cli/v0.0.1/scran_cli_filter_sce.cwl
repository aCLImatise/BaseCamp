class: CommandLineTool
id: scran_cli_filter_sce.R.cwl
inputs:
- id: input_sce_object
  doc: Path to the input SCE object in rds format.
  type: string
  inputBinding:
    prefix: --input-sce-object
- id: exprs_values
  doc: String indicating which assay contains the count data that should be used to
    compute log-transformed expression values.
  type: string
  inputBinding:
    prefix: --exprs-values
- id: min_genes
  doc: Minimum number of genes to be expressed per cell to pass filtering.
  type: long
  inputBinding:
    prefix: --min-genes
- id: min_cells
  doc: Minimum number of cells for a gene to be expressed to pass filtering.
  type: long
  inputBinding:
    prefix: --min-cells
- id: spikes
  doc: String or integer scalar specifying the alternative experiment containing the
    spike-in transcripts. Default; "ERCC"
  type: string
  inputBinding:
    prefix: --spikes
- id: n_spikes
  doc: 'Integer specifying the number of genes to add as spike-ins in case there is
    are no spike-ins in the "ERCC" slot. Default: 25.'
  type: string
  inputBinding:
    prefix: --n-spikes
- id: log
  doc: Logical specifying wether log-transformation of CPM counts should be performed.
  type: string
  inputBinding:
    prefix: --log
- id: output_sce_object
  doc: File name in which to store serialized R object of type 'SingleCellExperiment'.
  type: string
  inputBinding:
    prefix: --output-sce-object
outputs: []
cwlVersion: v1.1
baseCommand:
- scran-cli-filter-sce.R
