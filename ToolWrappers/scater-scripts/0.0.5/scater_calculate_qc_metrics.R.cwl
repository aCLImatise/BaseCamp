class: CommandLineTool
id: scater_calculate_qc_metrics.R.cwl
inputs:
- id: in_input_object_file
  doc: singleCellExperiment object containing expression values and experimental information.
    Must have been appropriately prepared.
  type: File?
  inputBinding:
    prefix: --input-object-file
- id: in_exprs_values
  doc: A string indicating which ‘assays’ in the ‘object’ should be used to define
    expression.
  type: string?
  inputBinding:
    prefix: --exprs-values
- id: in_feature_controls
  doc: file containing a list of the control files with one file per line. Each control
    file should have one feature (e.g. gene) per line. A named list is created (names
    derived from control file names) containing one or more vectors to identify feature
    controls (for example, ERCC spike-in genes, mitochondrial genes, etc)
  type: File?
  inputBinding:
    prefix: --feature-controls
- id: in_cell_controls
  doc: file (one cell per line) to be used to derive a vector of cell (sample) names
    used to identify cell controls (for example, blank wells or bulk controls).
  type: File?
  inputBinding:
    prefix: --cell-controls
- id: in_percent_top
  doc: Comma-separated list of integers. Each element is treated as a number of top
    genes to compute the percentage of library size occupied by the most highly expressed
    genes in each cell.
  type: long?
  inputBinding:
    prefix: --percent-top
- id: in_detection_limit
  doc: A numeric scalar to be passed to 'nexprs', specifying the lower detection limit
    for expression.
  type: string?
  inputBinding:
    prefix: --detection-limit
- id: in_use_spikes
  doc: A logical scalar indicating whether existing spike-in sets in ‘object’ should
    be automatically added to 'feature_controls', see '?isSpike'.
  type: string?
  inputBinding:
    prefix: --use-spikes
- id: in_output_object_file
  doc: file name in which to store serialized R object of type 'SingleCellExperiment'.
  type: File?
  inputBinding:
    prefix: --output-object-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_object_file
  doc: file name in which to store serialized R object of type 'SingleCellExperiment'.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_object_file)
hints: []
cwlVersion: v1.1
baseCommand:
- scater-calculate-qc-metrics.R
