class: CommandLineTool
id: scater_normalize.R.cwl
inputs:
- id: in_input_object_file
  doc: File name in which a serialized R SingleCellExperiment object where object
    matrix found
  type: File
  inputBinding:
    prefix: --input-object-file
- id: in_exprs_values
  doc: String indicating which assay contains the count data that should be used to
    compute log-transformed expression values.
  type: string
  inputBinding:
    prefix: --exprs-values
- id: in_return_log
  doc: Logical scalar, should normalized values be returned on the log2 scale?
  type: long
  inputBinding:
    prefix: --return-log
- id: in_log_exprs_offset
  doc: Numeric scalar specifying the offset to add when log-transforming expression
    values. If ‘NULL’, value is taken from ‘metadata(object)$log.exprs.offset’ if
    defined, otherwise 1.
  type: long
  inputBinding:
    prefix: --log-exprs-offset
- id: in_centre_size_factors
  doc: Logical scalar indicating whether size fators should be centred.
  type: long
  inputBinding:
    prefix: --centre-size-factors
- id: in_output_object_file
  doc: File name in which to store serialized R object of type 'SingleCellExperiment'.'
  type: File
  inputBinding:
    prefix: --output-object-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_object_file
  doc: File name in which to store serialized R object of type 'SingleCellExperiment'.'
  type: File
  outputBinding:
    glob: $(inputs.in_output_object_file)
cwlVersion: v1.1
baseCommand:
- scater-normalize.R
