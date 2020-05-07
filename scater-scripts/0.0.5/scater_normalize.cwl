class: CommandLineTool
id: scater_normalize.R.cwl
inputs:
- id: input_object_file
  doc: File name in which a serialized R SingleCellExperiment object where object
    matrix found
  type: string
  inputBinding:
    prefix: --input-object-file
- id: exprs_values
  doc: String indicating which assay contains the count data that should be used to
    compute log-transformed expression values.
  type: string
  inputBinding:
    prefix: --exprs-values
- id: return_log
  doc: Logical scalar, should normalized values be returned on the log2 scale?
  type: string
  inputBinding:
    prefix: --return-log
- id: log_exprs_offset
  doc: Numeric scalar specifying the offset to add when log-transforming expression
    values. If ‘NULL’, value is taken from ‘metadata(object)$log.exprs.offset’ if
    defined, otherwise 1.
  type: string
  inputBinding:
    prefix: --log-exprs-offset
- id: centre_size_factors
  doc: Logical scalar indicating whether size fators should be centred.
  type: string
  inputBinding:
    prefix: --centre-size-factors
- id: output_object_file
  doc: File name in which to store serialized R object of type 'SingleCellExperiment'.'
  type: string
  inputBinding:
    prefix: --output-object-file
outputs: []
cwlVersion: v1.1
baseCommand:
- scater-normalize.R
