class: CommandLineTool
id: scater_filter.R.cwl
inputs:
- id: input_object_file
  doc: A serialized SingleCellExperiment object file in RDS format.
  type: string
  inputBinding:
    prefix: --input-object-file
- id: subset_cell_variables
  doc: Comma-separated parameters to subset on. Any variable available in the colData
    of the supplied object.
  type: string
  inputBinding:
    prefix: --subset-cell-variables
- id: low_cell_thresholds
  doc: Comma-separated low cutoffs for the parameters (default is -Inf).
  type: string
  inputBinding:
    prefix: --low-cell-thresholds
- id: high_cell_thresholds
  doc: Comma-separated high cutoffs for the parameters (default is Inf).
  type: string
  inputBinding:
    prefix: --high-cell-thresholds
- id: cells_use
  doc: Comma-separated list of cell names to use as a subset. Alternatively, text
    file with one cell per line providing cell names to use as a subset.
  type: string
  inputBinding:
    prefix: --cells-use
- id: cells_discard
  doc: Comma-separated list of cell names to discard as a subset. Alternatively, text
    file with one cell per line providing cell names to discard as a subset.
  type: string
  inputBinding:
    prefix: --cells-discard
- id: subset_feature_variables
  doc: Comma-separated parameters to subset on. Any variable available in the colData
    of the supplied object.
  type: string
  inputBinding:
    prefix: --subset-feature-variables
- id: low_feature_thresholds
  doc: Comma-separated low cutoffs for the parameters (default is -Inf).
  type: string
  inputBinding:
    prefix: --low-feature-thresholds
- id: high_feature_thresholds
  doc: Comma-separated high cutoffs for the parameters (default is Inf).
  type: string
  inputBinding:
    prefix: --high-feature-thresholds
- id: features_use
  doc: Comma-separated list of feature names to use as a subset. Alternatively, text
    file with one feature per line providing feature names to use as a subset.
  type: string
  inputBinding:
    prefix: --features-use
- id: output_object_file
  doc: File name in which to store serialized R object of type 'Seurat'.'
  type: string
  inputBinding:
    prefix: --output-object-file
- id: output_cell_select_file
  doc: File name in which to store a matrix showing results of applying individual
    cell selection criteria.
  type: string
  inputBinding:
    prefix: --output-cellselect-file
- id: output_feature_select_file
  doc: File name in which to store a matrix showing results of applying individual
    feature selection criteria.
  type: string
  inputBinding:
    prefix: --output-featureselect-file
outputs: []
cwlVersion: v1.1
baseCommand:
- scater-filter.R
