class: CommandLineTool
id: scater_filter.R.cwl
inputs:
- id: in_input_object_file
  doc: A serialized SingleCellExperiment object file in RDS format.
  type: File
  inputBinding:
    prefix: --input-object-file
- id: in_subset_cell_variables
  doc: Comma-separated parameters to subset on. Any variable available in the colData
    of the supplied object.
  type: string
  inputBinding:
    prefix: --subset-cell-variables
- id: in_low_cell_thresholds
  doc: Comma-separated low cutoffs for the parameters (default is -Inf).
  type: string
  inputBinding:
    prefix: --low-cell-thresholds
- id: in_high_cell_thresholds
  doc: Comma-separated high cutoffs for the parameters (default is Inf).
  type: string
  inputBinding:
    prefix: --high-cell-thresholds
- id: in_cells_use
  doc: Comma-separated list of cell names to use as a subset. Alternatively, text
    file with one cell per line providing cell names to use as a subset.
  type: File
  inputBinding:
    prefix: --cells-use
- id: in_cells_discard
  doc: Comma-separated list of cell names to discard as a subset. Alternatively, text
    file with one cell per line providing cell names to discard as a subset.
  type: File
  inputBinding:
    prefix: --cells-discard
- id: in_subset_feature_variables
  doc: Comma-separated parameters to subset on. Any variable available in the colData
    of the supplied object.
  type: string
  inputBinding:
    prefix: --subset-feature-variables
- id: in_low_feature_thresholds
  doc: Comma-separated low cutoffs for the parameters (default is -Inf).
  type: string
  inputBinding:
    prefix: --low-feature-thresholds
- id: in_high_feature_thresholds
  doc: Comma-separated high cutoffs for the parameters (default is Inf).
  type: string
  inputBinding:
    prefix: --high-feature-thresholds
- id: in_features_use
  doc: Comma-separated list of feature names to use as a subset. Alternatively, text
    file with one feature per line providing feature names to use as a subset.
  type: File
  inputBinding:
    prefix: --features-use
- id: in_output_object_file
  doc: File name in which to store serialized R object of type 'Seurat'.'
  type: File
  inputBinding:
    prefix: --output-object-file
- id: in_output_cell_select_file
  doc: File name in which to store a matrix showing results of applying individual
    cell selection criteria.
  type: File
  inputBinding:
    prefix: --output-cellselect-file
- id: in_output_feature_select_file
  doc: File name in which to store a matrix showing results of applying individual
    feature selection criteria.
  type: File
  inputBinding:
    prefix: --output-featureselect-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_object_file
  doc: File name in which to store serialized R object of type 'Seurat'.'
  type: File
  outputBinding:
    glob: $(inputs.in_output_object_file)
- id: out_output_cell_select_file
  doc: File name in which to store a matrix showing results of applying individual
    cell selection criteria.
  type: File
  outputBinding:
    glob: $(inputs.in_output_cell_select_file)
- id: out_output_feature_select_file
  doc: File name in which to store a matrix showing results of applying individual
    feature selection criteria.
  type: File
  outputBinding:
    glob: $(inputs.in_output_feature_select_file)
cwlVersion: v1.1
baseCommand:
- scater-filter.R
