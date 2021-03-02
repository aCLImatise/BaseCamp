class: CommandLineTool
id: scater_calculate_cpm.R.cwl
inputs:
- id: in_input_object_file
  doc: File name containing serialized SingleCellExperiment object or count matrix.
  type: File?
  inputBinding:
    prefix: --input-object-file
- id: in_exprs_values
  doc: A string specifying the assay of ‘object’ containing the count matrix, if ‘object’
    is a SingleCellExperiment.
  type: string?
  inputBinding:
    prefix: --exprs-values
- id: in_size_factors
  doc: A logical scalar indicating whether size factors in object should be used to
    compute effective library sizes. If not, all size factors are deleted and librarysize-based
    factors are used instead (seelibrarySizeFactors). Alternatively, a numeric vector
    containing a size factor for each cell, which is used in place ofsizeFactor(object).
  type: long?
  inputBinding:
    prefix: --size-factors
- id: in_output_object_file
  doc: File name in which to store serialized R object of type 'Scater'.'
  type: File?
  inputBinding:
    prefix: --output-object-file
- id: in_output_text_file
  doc: File name in which to store CPM values.
  type: File?
  inputBinding:
    prefix: --output-text-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_object_file
  doc: File name in which to store serialized R object of type 'Scater'.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_object_file)
- id: out_output_text_file
  doc: File name in which to store CPM values.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_text_file)
hints: []
cwlVersion: v1.1
baseCommand:
- scater-calculate-cpm.R
