class: CommandLineTool
id: sc3_sc3_calc_transfs.R.cwl
inputs:
- id: input_object_file
  doc: File name in which a processed SC3 'SingleCellExperiment' object has been stored
  type: string
  inputBinding:
    prefix: --input-object-file
- id: output_object_file
  doc: File name in which to store a transformed R object of type 'SingleCellExperiment'
    from SC3.
  type: string
  inputBinding:
    prefix: --output-object-file
outputs: []
cwlVersion: v1.1
baseCommand:
- sc3-sc3-calc-transfs.R
