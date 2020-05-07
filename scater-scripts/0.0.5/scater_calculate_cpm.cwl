class: CommandLineTool
id: scater_calculate_cpm.R.cwl
inputs:
- id: input_object_file
  doc: File name containing serialized SingleCellExperiment object or count matrix.
  type: string
  inputBinding:
    prefix: --input-object-file
- id: exprs_values
  doc: A string specifying the assay of ‘object’ containing the count matrix, if ‘object’
    is a SingleCellExperiment.
  type: string
  inputBinding:
    prefix: --exprs-values
- id: size_factors
  doc: A logical scalar indicating whether size factors in object should be used to
    compute effective library sizes. If not, all size factors are deleted and librarysize-based
    factors are used instead (seelibrarySizeFactors). Alternatively, a numeric vector
    containing a size factor for each cell, which is used in place ofsizeFactor(object).
  type: long
  inputBinding:
    prefix: --size-factors
- id: output_object_file
  doc: File name in which to store serialized R object of type 'Scater'.'
  type: string
  inputBinding:
    prefix: --output-object-file
- id: output_text_file
  doc: File name in which to store CPM values.
  type: string
  inputBinding:
    prefix: --output-text-file
outputs: []
cwlVersion: v1.1
baseCommand:
- scater-calculate-cpm.R
