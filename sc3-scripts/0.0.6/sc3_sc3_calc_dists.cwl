class: CommandLineTool
id: sc3_sc3_calc_dists.R.cwl
inputs:
- id: input_object_file
  doc: File name in which a serialized R SingleCellExperiment object where object
    matrix found
  type: string
  inputBinding:
    prefix: --input-object-file
- id: output_object_file
  doc: File name in which to store serialized R object of type 'SingleCellExperiment'.'
  type: string
  inputBinding:
    prefix: --output-object-file
outputs: []
cwlVersion: v1.1
baseCommand:
- sc3-sc3-calc-dists.R
