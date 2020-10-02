class: CommandLineTool
id: sc3_sc3_calc_transfs.R.cwl
inputs:
- id: in_input_object_file
  doc: File name in which a processed SC3 'SingleCellExperiment' object has been stored
  type: File
  inputBinding:
    prefix: --input-object-file
- id: in_output_object_file
  doc: File name in which to store a transformed R object of type 'SingleCellExperiment'
    from SC3.
  type: File
  inputBinding:
    prefix: --output-object-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_object_file
  doc: File name in which to store a transformed R object of type 'SingleCellExperiment'
    from SC3.
  type: File
  outputBinding:
    glob: $(inputs.in_output_object_file)
cwlVersion: v1.1
baseCommand:
- sc3-sc3-calc-transfs.R
